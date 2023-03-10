cask "millie" do
  version "5.4.1"
  sha256 "73d019b9c3dabde966260041610f5bc5cbe10d9b802e423ebd2d955147adae05"

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
