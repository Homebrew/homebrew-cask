cask "get-iplayer-automator" do
  version "1.19.3,b20201206001"
  sha256 "30da84680361723e950f40e70eff55ff21e184a57c351856c6e5c36247be1254"

  url "https://github.com/Ascoware/get-iplayer-automator/releases/download/v#{version.before_comma}/Get.iPlayer.Automator.v#{version.before_comma}.#{version.after_comma}.zip"
  appcast "https://github.com/Ascoware/get-iplayer-automator/releases.atom",
          must_contain: version.before_comma
  name "Get iPlayer Automator"
  homepage "https://github.com/Ascoware/get-iplayer-automator"

  app "Get iPlayer Automator.app"
end
