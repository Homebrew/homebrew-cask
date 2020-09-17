cask "inav-configurator" do
  version "2.5.0"
  sha256 "cdecdb1bbf8fd22c2102b7e7ab3aaca8c9174040960fb66a882276fa9a0580b0"

  url "https://github.com/iNavFlight/inav-configurator/releases/download/#{version}/INAV-Configurator_macOS_#{version}.zip"
  appcast "https://github.com/iNavFlight/inav-configurator/releases.atom"
  name "INAV Configurator"
  desc "Configuration tool for the INAV flight control system"
  homepage "https://github.com/iNavFlight/inav-configurator/"

  app "INAV Configurator.app"
end
