cask "millie" do
  version "5.6.3"
  sha256 "1214838dace70f30e7d81e791028e7026f87c7663a625b843429cc612f6fb25e"

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
