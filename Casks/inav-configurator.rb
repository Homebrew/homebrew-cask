cask "inav-configurator" do
  version "5.0.0"
  sha256 "f510bae6c7f5f7eded718b651b8d2a808fb0d068333a587e969e445cf1952b5d"

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
