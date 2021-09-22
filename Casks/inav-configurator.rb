cask "inav-configurator" do
  version "3.0.2"
  sha256 "b03d4b5fd30b6e66e49c80d85fd0b11a2e1fd1309226aa9c73c8f9429ded141a"

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
