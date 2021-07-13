cask "millie" do
  version "2.14.0"
  sha256 "5db1e453eb61a9d3ce7366a6aadabd0d84ee1ffc9f6da76118b10ccdfefb3b39"

  url "https://apis.millie.co.kr/v1/download/installer/mac/Millie-#{version}.dmg"
  name "millie"
  desc "E-book store in Republic of korea"
  homepage "https://www.millie.co.kr/"

  app "Millie.app"

  zap trash: [
    "~/Library/Application Scripts/com.getdropbox.dropbox.garcon",
    "~/Library/Application Support/millie",
    "~/Library/Logs/millie",
    "~/Library/Saved Application State/com.electron.millie.savedState",
  ]
end
