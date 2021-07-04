cask "inav-configurator" do
  version "3.0.0"
  sha256 "69e62a1cd65469c7c390062cdff6e28862fa72e518f9a75f80258aaa7b7488e2"

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
