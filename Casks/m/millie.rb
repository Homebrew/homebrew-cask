cask "millie" do
  version "5.31.0"
  sha256 "884ee2b0c41c6a5d3d18a69c40cf324a6a839f7be666bd5b2f70d81542d695e6"

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
