cask "deskreen" do
  arch arm: "arm64", intel: "x64"

  version "3.2.0"
  sha256 arm:   "24d4f0f88da50ab7a4d82fd396007d6990ac5834780e21c92be53ffce38e7709",
         intel: "1d5dc8da1a7c69527dc463f5de7c643f411de89098c9e685557f4b2214c24849"

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
