cask "millie" do
  version "5.28.0"
  sha256 "0840aab2d41fa29f23cab3ed2b689ab3ab49952f91941386a0401565879bef2f"

  url "https://apis.millie.co.kr/v1/download/installer/mac/Millie-#{version}.dmg"
  name "millie"
  desc "Korean e-book store"
  homepage "https://www.millie.co.kr/"

  livecheck do
    url "https://install.millie.co.kr/mac/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Millie.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.electron.millie.sfl*",
    "~/Library/Application Support/millie",
    "~/Library/Logs/millie",
    "~/Library/Preferences/com.electron.millie.plist",
    "~/Library/Saved Application State/com.electron.millie.savedState",
  ]
end
