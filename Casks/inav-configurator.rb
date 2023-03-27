cask "inav-configurator" do
  version "6.0.0"
  sha256 "2b008ded256dc687459a1da45822325bfedfb1f5bcda6dac966f18c59bbaad50"

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
