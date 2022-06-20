cask "dixa" do
  version "4.0.9"
  sha256 "525b958ddf0de299296a58bce9493649586a82da687511b6d9d4ac222927a2f5"
  url "https://github.com/todbot/Blink1Control2/releases/download/v#{version}/dixa-#{version}.dmg",
      verified: "github.com/dixahq/dixa-desktop-app-release"
  name "Dixa"
  desc "Dixa is a born global customer service tech company on a mission to solve customer chaos, eliminate bad customer service and build strong bonds between companies and their customers - much like the connection between friends."
  homepage "https://dixa.com"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Dixa.app"
end