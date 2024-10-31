cask "blender@lts" do
  arch arm: "arm64", intel: "x64"

  version "4.2.3"
  sha256 arm:   "cb12963b9d9977f2c71a4b5c2b51ae65cb031484213672f2ddcf743cc72213b5",
         intel: "c5dd47da2e620633f20e700aa6ee0fa65f53e810a68bee1eda27510b71c701d7"

  url "https://download.blender.org/release/Blender#{version.major_minor}/blender-#{version}-macos-#{arch}.dmg"
  name "Blender"
  desc "Free and open-source 3D creation suite"
  homepage "https://www.blender.org/"

  # NOTE: The download page contents may change once the newest version is no
  # longer an LTS version (i.e. 3.4 instead of 3.3 LTS) requiring further
  # changes to this setup.
  livecheck do
    url "https://www.blender.org/download/"
    regex(%r{href=.*?/blender[._-]v?(\d+(?:\.\d+)+)-macos-#{arch}\.dmg}i)
    strategy :page_match do |page, regex|
      # Match major/minor versions from LTS "download" page URLs
      lts_page = Homebrew::Livecheck::Strategy.page_content("https://www.blender.org/download/lts/")
      next if lts_page[:content].blank?

      lts_versions =
        lts_page[:content].scan(%r{href=["'].*/download/(?:lts|releases)/(\d+(?:[.-]\d+)+)/["' >]}i)
                          .flatten
                          .uniq
                          .map { |v| Version.new(v) }
      next if lts_versions.blank?

      version_page = Homebrew::Livecheck::Strategy.page_content("https://www.blender.org/download/lts/#{lts_versions.max}/")
      next if version_page[:content].blank?

      # If the version page has a download link, return it as the livecheck version
      matched_versions = version_page[:content].scan(regex).flatten
      next matched_versions if matched_versions.present?

      # If the version page doesn't have a download link, check the download page
      # Ensure we only match LTS versions on the download page
      page.scan(regex)
          .flatten
          .select { |v| lts_versions.include?(Version.new(v).major_minor) }
    end
  end

  conflicts_with cask: "blender"
  depends_on macos: ">= :high_sierra"

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
