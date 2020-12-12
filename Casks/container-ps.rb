cask "container-ps" do
  version "1.2.1"
  sha256 "4e3201cf52936c7d92e45fad5f36698780b6b753d9fe03ee28dc20c60cf7953c"

  url "https://github.com/Toinane/container-ps/releases/download/#{version}/Container.PS-#{version}.dmg"
  appcast "https://github.com/Toinane/container-ps/releases.atom"
  name "Container PS"
  desc "App to show all docker images"
  homepage "https://github.com/Toinane/container-ps"

  app "Container PS.app"
end
