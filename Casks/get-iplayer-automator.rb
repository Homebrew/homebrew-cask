cask "get-iplayer-automator" do
  version "1.19.0,b20200811001"
  sha256 "cbe6dee34afc4e4b9299e6dd10a28acf64751eb792fcf6d92d8c3bad55a471a4"

  url "https://github.com/Ascoware/get-iplayer-automator/releases/download/v#{version.before_comma}/Get.iPlayer.Automator.v#{version.before_comma}.#{version.after_comma}.zip"
  appcast "https://github.com/Ascoware/get-iplayer-automator/releases.atom",
          must_contain: version.before_comma
  name "Get iPlayer Automator"
  homepage "https://github.com/Ascoware/get-iplayer-automator"

  app "Get iPlayer Automator.app"
end
