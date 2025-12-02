cask "deskreen" do
  arch arm: "arm64", intel: "x64"

  version "3.1.17"
  sha256 arm:   "829e642cd2e823b4b26ea88e26691b8d6303e65b687fb3ad826492c13ef3fd9f",
         intel: "290711928e5edc3bcf38a773c2e2d61beddea518b5ca4650c62cb46a3f29e1d2"

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
