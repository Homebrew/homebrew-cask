cask "ajour" do
  version "0.4.1"
  sha256 "e934c8b21944e3264e2863135502552a10780df7d749620374ebb1d0cc44325d"

  url "https://github.com/casperstorm/ajour/releases/download/#{version}/ajour.dmg"
  appcast "https://github.com/casperstorm/ajour/releases.atom"
  name "Ajour"
  desc "World of Warcraft addon manager"
  homepage "https://github.com/casperstorm/ajour"

  app "Ajour.app"

  zap trash: "~/.config/ajour"
end
