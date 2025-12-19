cask "blender" do
  arch arm: "arm64", intel: "x64"

  # NOTE: Please manually check for a new `blender@lts` version at
  # https://www.blender.org/download/lts/ when updating this cask, as we cannot
  # identify LTS versions using livecheck.
  on_arm do
    version "5.0.1"
    sha256 "102a81ddee5346c96339c6a529069a2d52df05f330eb9bfd431c8dd79fb4afb6"

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
    version "4.5.5"
    sha256 "f60c27f9a52ccde87e9e68ae8184e5c8c56f8b622d0657b345c64ad2b1232174"

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
  depends_on macos: ">= :big_sur"

  app "Blender.app"
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/blender.wrapper.sh"
  binary shimscript, target: "blender"

  preflight do
    # make __pycache__ directories writable, otherwise uninstall fails
    FileUtils.chmod "u+w", Dir.glob("#{staged_path}/*.app/**/__pycache__")

    File.write shimscript, <<~EOS
      #!/bin/bash
      '#{appdir}/Blender.app/Contents/MacOS/Blender' "$@"
    EOS
  end

  zap trash: [
    "~/Library/Application Support/Blender",
    "~/Library/Saved Application State/org.blenderfoundation.blender.savedState",
  ]
end
