cask "deskreen" do
  arch arm: "arm64", intel: "x64"

  version "3.1.3"
  sha256 arm:   "be489c0779bc524e4bdcbe7f17feae584a5a8eba885273ab113a90f2b31a29cf",
         intel: "ef128a041b95dd719a20c1da3da05f6a032db87c0e04c0014f5cd3f3c0b0d2e0"

  url "https://github.com/pavlobu/deskreen/releases/download/v#{version}/Deskreen-ce-#{version}-#{arch}.dmg",
      verified: "github.com/pavlobu/deskreen/"
  name "Deskreen"
  desc "Turns any device with a web browser into a secondary screen"
  homepage "https://deskreen.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "Deskreen CE.app"

  zap trash: [
    "~/Library/Application Support/Deskreen",
    "~/Library/Logs/Deskreen",
    "~/Library/Preferences/com.pavlobu.Deskreen.plist",
    "~/Library/Saved Application State/com.pavlobu.Deskreen.savedState",
  ]
end
