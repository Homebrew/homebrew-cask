cask "blink1control" do
  version "2.2.8"
  sha256 "4198a22f2484580bad50d9001c7c0e379cca27493e274f8411a4cc4bf48ad5aa"

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
