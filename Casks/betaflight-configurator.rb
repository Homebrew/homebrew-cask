cask "betaflight-configurator" do
  version "10.7.2"
  sha256 "2eb839980c4d7398ea78e7e28736a44308b51c065400d1a6171e9bad3ffc1084"

  url "https://github.com/betaflight/betaflight-configurator/releases/download/#{version}/betaflight-configurator_#{version}_macOS.dmg"
  name "Betaflight-Configurator"
  desc "Configuration tool for the Betaflight firmware"
  homepage "https://github.com/betaflight/betaflight-configurator"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Betaflight Configurator.app"
end
