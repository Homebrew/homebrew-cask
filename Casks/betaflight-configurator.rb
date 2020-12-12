cask "betaflight-configurator" do
  version "10.7.0"
  sha256 "29565420c31e849703d941bcb5ca2ee31af6a1c069e325c49e0d1133447b4b03"

  url "https://github.com/betaflight/betaflight-configurator/releases/download/#{version}/betaflight-configurator_#{version}_macOS.dmg"
  appcast "https://github.com/betaflight/betaflight-configurator/releases.atom"
  name "Betaflight-Configurator"
  desc "Configuration tool for the Betaflight firmware"
  homepage "https://github.com/betaflight/betaflight-configurator"

  app "Betaflight Configurator.app"
end
