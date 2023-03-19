cask "millie" do
  version "5.5.2"
  sha256 "d33201e02c9a592b29636daeca3fd4d5de5b34cb1bbc5e366f6b5263b2268f3a"

  url "https://apis.millie.co.kr/v1/download/installer/mac/Millie-#{version}.dmg"
  name "millie"
  desc "Korean e-book store"
  homepage "https://www.millie.co.kr/"

  livecheck do
    url "https://apis.millie.co.kr/v1/download/installer/mac/latest-mac.yml"
    strategy :electron_builder
  end

  app "Millie.app"

  zap trash: [
    "~/Library/Application Support/millie",
    "~/Library/Logs/millie",
    "~/Library/Preferences/com.electron.millie.plist",
    "~/Library/Saved Application State/com.electron.millie.savedState",
  ]
end
