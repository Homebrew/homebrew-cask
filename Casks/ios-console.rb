cask "ios-console" do
  version "1.0.2"
  sha256 "84e3c4fbf685744fddf7ab87ac9fcb7fbccbc0d82baf22351d500ed1616ae84f"

  url "https://downloads.lemonjar.com/iosconsole_v#{version}.zip"
  appcast "https://updates.lemonjar.com/iosconsole.xml"
  name "iOS Console"
  homepage "https://lemonjar.com/iosconsole/"

  app "iOS Console.app"
end
