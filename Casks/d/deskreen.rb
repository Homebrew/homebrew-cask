cask "deskreen" do
  arch arm: "arm64", intel: "x64"

  version "3.2.15"
  sha256 arm:   "bfeb75823971706af9a2123a4c212a5244c0a0000f094be703a8125dbdeba3c8",
         intel: "83dd1e028266cd868ef05648b1106236a46fd00eb55699ad89aec3a0f35e0b2c"

  url "https://github.com/pavlobu/deskreen/releases/download/v#{version}/Deskreen-ce-#{version}-#{arch}.dmg",
      verified: "github.com/pavlobu/deskreen/"
  name "Deskreen"
  desc "Turns any device with a web browser into a secondary screen"
  homepage "https://deskreen.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :big_sur

  app "Deskreen CE.app"

  zap trash: [
    "~/Library/Application Support/Deskreen",
    "~/Library/Logs/Deskreen",
    "~/Library/Preferences/com.pavlobu.Deskreen.plist",
    "~/Library/Saved Application State/com.pavlobu.Deskreen.savedState",
  ]
end
