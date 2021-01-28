cask "inav-configurator" do
  version "2.6.1"
  sha256 "6ac1e7aff5c2c7d1b11a8ed8835852c0895b588335cbe9804b9a8b3d2e440470"

  url "https://github.com/iNavFlight/inav-configurator/releases/download/#{version}/INAV-Configurator_macOS_#{version}.zip"
  appcast "https://github.com/iNavFlight/inav-configurator/releases.atom"
  name "INAV Configurator"
  desc "Configuration tool for the INAV flight control system"
  homepage "https://github.com/iNavFlight/inav-configurator/"

  app "INAV Configurator.app"
end
