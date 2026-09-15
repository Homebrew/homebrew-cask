cask "blender" do
  arch arm: "arm64", intel: "x64"

  # NOTE: Please manually check for a new `blender@lts` version at
  # https://www.blender.org/download/lts/ when updating this cask, as we cannot
  # identify LTS versions using livecheck.
  on_arm do
    version "5.2.2"
    sha256 "dc4125399b8bfefe283cc1624d6cfc7809d1cac20ace51072127eb371f31f210"

    # The upstream download page (https://www.blender.org/download/) cannot be
    # fetched due to Cloudflare protections, so we have to naively assume a
    # version is released when the assets are uploaded.
    livecheck do
      url "https://download.blender.org/release/"
      regex(/href=.*?blender[._-]v?(\d+(?:\.\d+)+)(?:[._-]macos)?[._-]#{arch}\.dmg/i)
      strategy :page_match do |page, regex|
        # Match major/minor versions from stable directory names
        major_minor_versions =
          page.scan(%r{href=["']?[^"' >]*?Blender[._-]?v?(\d+(?:\.\d+)+)/?["' >]}i)
              .flatten
              .uniq
              .sort_by { |v| Version.new(v) }
        next if major_minor_versions.blank?

        # Check the directory listing page for the highest major/minor version
        directory_page = Homebrew::Livecheck::Strategy.page_content(
          URI.join(@url, "Blender#{major_minor_versions.last}/").to_s,
        )[:content]
        next if directory_page.blank?

        directory_page.scan(regex).map { |match| match[0] }
      end
    end
  end
  on_intel do
    version "4.5.14"
    sha256 "613e73339e97bd113adeeb28d9155beeacf2df7119ee4dbd6bdce234843645f6"

    # Intel support is limited to version 4.5.x series.
    livecheck do
      url "https://download.blender.org/release/Blender4.5/"
      regex(/href=.*?blender[._-]v?(\d+(?:\.\d+)+)(?:[._-]macos)?[._-]#{arch}\.dmg/i)
    end

    deprecate! date: "2027-07-01", because: :unsupported
  end

  url "https://download.blender.org/release/Blender#{version.major_minor}/blender-#{version}-macos-#{arch}.dmg"
  name "Blender"
  desc "3D creation suite"
  homepage "https://www.blender.org/"

  conflicts_with cask: "blender@lts"
  depends_on :macos

  app "Blender.app"
  command_wrapper "blender",
                  executable: "#{appdir}/Blender.app/Contents/MacOS/Blender"

  preflight_steps do
    set_permissions "*.app/**/__pycache__", "u+w", recursive: false
  end

  zap trash: [
    "~/Library/Application Support/Blender",
    "~/Library/Saved Application State/org.blenderfoundation.blender.savedState",
  ]
end
