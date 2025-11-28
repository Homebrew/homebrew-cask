cask "deskreen" do
  arch arm: "arm64", intel: "x64"

  version "3.1.13"
  sha256 arm:   "9384c10e9ce9c5ef78823d9667df531880c59fc5f05491d5b82e0e90267ff03e",
         intel: "7177c9b2b39636aa5a5c5be38b948fe1696763b6e63011076541c42f2f0d2da9"

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
