cask "inav-configurator" do
  version "2.6.0"
  sha256 "4dffd1159b9865d914ccfb5688104fc980a4ebb841ad647f18cd90f1dcf3d22a"

  url "https://github.com/iNavFlight/inav-configurator/releases/download/#{version}/INAV-Configurator_macOS_#{version}.zip"
  appcast "https://github.com/iNavFlight/inav-configurator/releases.atom"
  name "INAV Configurator"
  desc "Configuration tool for the INAV flight control system"
  homepage "https://github.com/iNavFlight/inav-configurator/"

  app "INAV Configurator.app"
end
