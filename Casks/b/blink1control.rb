cask "blink1control" do
  version "2.2.9"
  sha256 "fa4a8457f905b6e7ef288c621fed646305ac31408932a9cfa7181fde41499ec2"

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
