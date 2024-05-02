cask "millie" do
  version "5.23.2"
  sha256 "b6288aa898daea99418f9a8ca68236f1ae6fc5f41ea1b5416bd23b461b2bd237"

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
