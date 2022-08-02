cask "betaflight-configurator" do
  version "10.8.0"
  sha256 "6bf9ea02eb61a3c35b4a7e0cb9f82922d109f04c24539734a501ea80e52d11eb"

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
