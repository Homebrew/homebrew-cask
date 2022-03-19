cask "inav-configurator" do
  version "4.0.0"
  sha256 "02f1a3e37b38d63528906f48b618519eac19097c3d54faa204404ad3b38a78df"

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
