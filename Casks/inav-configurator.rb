cask "inav-configurator" do
  version "3.0.1"
  sha256 "7545b4ff724899372af5e9f8689891a09f7c0414973e44569d3cbe934a2fdd1d"

  url "https://github.com/iNavFlight/inav-configurator/releases/download/#{version}/INAV-Configurator_macOS_#{version}.zip"
  name "INAV Configurator"
  desc "Configuration tool for the INAV flight control system"
  homepage "https://github.com/iNavFlight/inav-configurator/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "INAV Configurator.app"
end
