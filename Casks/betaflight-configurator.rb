cask "betaflight-configurator" do
  version "10.7.1"
  sha256 "53c60c38a78a2a5db51b2ad73025911d1d69f66b99fcbb1fda5fab35a0667f7f"

  url "https://github.com/betaflight/betaflight-configurator/releases/download/#{version}/betaflight-configurator_#{version}_macOS.dmg"
  name "Betaflight-Configurator"
  desc "Configuration tool for the Betaflight firmware"
  homepage "https://github.com/betaflight/betaflight-configurator"

  app "Betaflight Configurator.app"
end
