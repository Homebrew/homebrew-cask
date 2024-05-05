cask "cursr" do
  arch arm: "arm64", intel: "x64"

  version "1.7.1"
  sha256 arm:   "15d42691ab84ec73a7309a4d14ba9f2de4af24e8dded265443b82ec68d7bea96",
         intel: "b6e388c43319e55fceaff606e7e0708ec1c647496edb9dbd7694eafc829fd4cd"

  url "https://github.com/bitgapp/Cursr/releases/download/v#{version}/Cursr-mac-#{arch}.dmg",
      verified: "github.com/bitgapp/Cursr/"
  name "Cursr"
  desc "Customise mouse movements between multiple displays"
  homepage "https://cursr.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "Cursr.app"

  zap trash: [
    "~/Library/Application Support/cursr",
    "~/Library/Preferences/com.bitgapp.cursr.plist",
  ]
end
