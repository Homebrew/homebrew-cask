cask "get-iplayer-automator" do
  version "1.19.2,b20201018001"
  sha256 "b63cbac122b7e8ec4a195b96b9f8366ffd974c311b468765e18fbf00184f0e72"

  url "https://github.com/Ascoware/get-iplayer-automator/releases/download/v#{version.before_comma}/Get.iPlayer.Automator.v#{version.before_comma}.#{version.after_comma}.zip"
  appcast "https://github.com/Ascoware/get-iplayer-automator/releases.atom",
          must_contain: version.before_comma
  name "Get iPlayer Automator"
  homepage "https://github.com/Ascoware/get-iplayer-automator"

  app "Get iPlayer Automator.app"
end
