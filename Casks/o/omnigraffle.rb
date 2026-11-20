cask "omnigraffle" do
  on_ventura :or_older do
    on_big_sur :or_older do
      version "7.22.6"
      sha256 "1159e731ab282b2f2b3881cbc75cc7bb40263cb3b56826f4ef6334295b47a883"

      url "https://downloads.omnigroup.com/software/macOS/11/OmniGraffle-#{version}.dmg"
    end

    on_monterey :or_newer do
      version "7.25.3"
      sha256  "97c9b8a264ec380a4955c1c8a3cf583010003881dd1b0cf46f712d73ef33480b"

      url "https://downloads.omnigroup.com/software/macOS/12/OmniGraffle-#{version}.dmg"
    end

    livecheck do
      skip "Legacy version"
    end
  end
  on_sonoma :or_newer do
    version "7.26.1"
    sha256 "4ec5b75abfc7102ffe10df09ce479a95a2d3ee60a1fd828e996dc291b2c0d898"

    url "https://downloads.omnigroup.com/software/macOS/14/OmniGraffle-#{version}.dmg"

    livecheck do
      url "https://www.omnigroup.com/download/latest/omnigraffle/"
      strategy :header_match
    end
  end

  name "OmniGraffle"
  desc "Visual communication software"
  homepage "https://www.omnigroup.com/omnigraffle/"

  auto_updates true
  depends_on :macos

  app "OmniGraffle.app"

  zap trash: [
    "~/Library/Application Scripts/com.omnigroup.OmniGraffle#{version.major}",
    "~/Library/Application Support/CloudDocs/session/containers/iCloud.com.omnigroup.OmniGraffle",
    "~/Library/Application Support/CloudDocs/session/containers/iCloud.com.omnigroup.OmniGraffle.plist",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.omnigroup.omnigraffle#{version.major}.sfl*",
    "~/Library/Containers/com.omnigroup.OmniGraffle#{version.major}",
    "~/Library/Mobile Documents/iCloud~com~omnigroup~OmniGraffle",
  ]
end
