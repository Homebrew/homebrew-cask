cask "deskreen" do
  arch arm: "arm64", intel: "x64"

  version "3.1.9"
  sha256 arm:   "63167b75c6e26c1579e293a81d50e15613489d155eabdae1c8921851339cb334",
         intel: "fc13c18c8965e9660dd44f1d82f06f58ef04c8c0eeff1c1cb4007878632d3886"

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
