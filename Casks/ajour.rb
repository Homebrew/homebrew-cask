cask "ajour" do
  version "0.5.0"
  sha256 "af8dd0415d279034170ec7759a6bee1b08d6b756883dce1e64219cf6aa2c85e9"

  url "https://github.com/casperstorm/ajour/releases/download/#{version}/ajour.dmg"
  appcast "https://github.com/casperstorm/ajour/releases.atom"
  name "Ajour"
  desc "World of Warcraft addon manager"
  homepage "https://github.com/casperstorm/ajour"

  app "Ajour.app"

  zap trash: "~/.config/ajour"
end
