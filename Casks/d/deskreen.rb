cask "deskreen" do
  arch arm: "arm64", intel: "x64"

  version "3.1.8"
  sha256 arm:   "f4758899fbbf13f78fa3b1fa7c9b126acdc319f3507c3bd1c2455541ea3af95e",
         intel: "a7723c267f8fe290cfbefab446aaabda790ae744c9eb61a4990eb5a25e335ed7"

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
