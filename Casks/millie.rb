cask "millie" do
  version "5.3.0"
  sha256 "bac5b25387c53ed0513eb95baf401866bbed2817349d6b31410340de0e069411"

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
