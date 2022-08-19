cask "millie" do
  version "2.39.2"
  sha256 "d3baaf75bd7df4f303a9ed7a53c2f8fef1426229b07fcd6b15973128595cde62"

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
