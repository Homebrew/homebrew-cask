cask "millie" do
  version "5.26.1"
  sha256 "f0a8e3f5c3d3d1c0e9526b5ee20309b378bf05595653d79e382480c1c1843776"

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
