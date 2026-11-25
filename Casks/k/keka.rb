cask "keka" do
  version "1.6.8"
  sha256 "25a4daf0492b7e3bca043c8a7ba1ae97507dd8dbf872811daf74b01f16a12125"

  url "https://github.com/aonez/Keka/releases/download/v#{version}/Keka-#{version}.dmg"
  name "Keka"
  desc "File archiver"
  homepage "https://www.keka.io/"

  livecheck do
    url "https://u.keka.io/keka.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  conflicts_with cask: "keka@beta"
  depends_on :macos

  app "Keka.app"
  command_wrapper "keka",
                  executable: "#{appdir}/Keka.app/Contents/MacOS/Keka",
                  args:       "--cli"

  zap trash: [
    "~/Library/Application Scripts/*.group.com.aone.keka",
    "~/Library/Application Scripts/com.aone.keka",
    "~/Library/Application Scripts/com.aone.keka.KekaFinderIntegration",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.aone.keka.sfl*",
    "~/Library/Application Support/Keka",
    "~/Library/Caches/com.aone.keka",
    "~/Library/Containers/com.aone.keka",
    "~/Library/Containers/com.aone.keka.KekaFinderIntegration",
    "~/Library/Group Containers/*.group.com.aone.keka",
    "~/Library/Preferences/com.aone.keka.plist",
    "~/Library/Saved Application State/com.aone.keka.savedState",
  ]
end
