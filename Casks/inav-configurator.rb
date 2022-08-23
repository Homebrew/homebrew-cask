cask "inav-configurator" do
  version "5.1.0"
  sha256 "75d386c0b655ca67b0a76511e3717fd55113fa1426586c1353b8939c6dfdd953"

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
