cask "ios-console" do
  version "1.0.2,55"
  sha256 "84e3c4fbf685744fddf7ab87ac9fcb7fbccbc0d82baf22351d500ed1616ae84f"

  url "https://downloads.lemonjar.com/iosconsole_v#{version.csv.first}.zip"
  name "iOS Console"
  homepage "https://lemonjar.com/"

  livecheck do
    url "https://updates.lemonjar.com/iosconsole.xml"
    strategy :sparkle
  end

  app "iOS Console.app"
end
