cask "get-iplayer-automator" do
  version "1.19.1,b20200906001"
  sha256 "d1a9e3563e7a98c1fa3eec232cf059911487d00cca9608826e3de26f6534a1a7"

  url "https://github.com/Ascoware/get-iplayer-automator/releases/download/v#{version.before_comma}/Get.iPlayer.Automator.v#{version.before_comma}.#{version.after_comma}.zip"
  appcast "https://github.com/Ascoware/get-iplayer-automator/releases.atom",
          must_contain: version.before_comma
  name "Get iPlayer Automator"
  homepage "https://github.com/Ascoware/get-iplayer-automator"

  app "Get iPlayer Automator.app"
end
