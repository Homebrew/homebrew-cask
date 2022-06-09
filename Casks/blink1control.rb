cask "blink1control" do
  version "2.2.7"
  sha256 "525b958ddf0de299296a58bce9493649586a82da687511b6d9d4ac222927a2f5"

  url "https://github.com/todbot/Blink1Control2/releases/download/v#{version}/Blink1Control#{version.major}-#{version}-mac-x64.dmg",
      verified: "github.com/todbot/Blink1Control2/"
  name "Blink1Control"
  desc "Utility to control blink(1) USB RGB LED devices"
  homepage "https://blink1.thingm.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Blink1Control#{version.major}.app"
end
