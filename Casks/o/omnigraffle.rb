cask "omnigraffle" do
  on_big_sur :or_older do
    on_catalina :or_older do
      version "7.18.6"
      sha256 "5dfc4f56f5a243f39abf0baf3d9dc2b1921f981bc6edb876f4eec710379e1fa6"

      url "https://downloads.omnigroup.com/software/MacOSX/10.14/OmniGraffle-#{version}.dmg"
    end
    on_big_sur do
      version "7.22.6"
      sha256 "1159e731ab282b2f2b3881cbc75cc7bb40263cb3b56826f4ef6334295b47a883"

      url "https://downloads.omnigroup.com/software/macOS/11/OmniGraffle-#{version}.dmg"
    end

    livecheck do
      skip "Legacy version"
    end
  end
  on_monterey :or_newer do
    version "7.25.2"
    sha256 "9dc0895b1c3b7abf51c25c2ac8ad1aff0ab8c8a036d979ad23d9b8a21a97eb97"

    url "https://downloads.omnigroup.com/software/macOS/12/OmniGraffle-#{version}.dmg"

    livecheck do
      url "https://www.omnigroup.com/download/latest/omnigraffle/"
      strategy :header_match
    end
  end

  name "OmniGraffle"
  desc "Visual communication software"
  homepage "https://www.omnigroup.com/omnigraffle/"

  auto_updates true

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
