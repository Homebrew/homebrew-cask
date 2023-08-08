cask "cursr" do
  arch arm: "arm64", intel: "x64"

  version "1.5.0"
  sha256 arm:   "7a56c4c9b6bf365e4ad6c8850ead579b4b8e6993846ca640639cde9b80a5a048",
         intel: "d32ef6cd76c65814f0372aaed6c98c631355ee89e9a6f3c2e05fbdc4a5f722a9"

  url "https://github.com/bitgapp/Cursr/releases/download/v#{version}/Cursr-mac-#{arch}.dmg",
      verified: "github.com/bitgapp/Cursr/"
  name "Cursr"
  desc "Customize mouse movements between multiple displays"
  homepage "https://cursr.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Cursr.app"

  zap trash: [
    "~/Library/Application Support/cursr",
    "~/Library/Preferences/com.bitgapp.cursr.plist",
  ]
end
