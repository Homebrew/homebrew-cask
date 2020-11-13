cask "ajour" do
  version "0.5.1"
  sha256 "410915e6675137314b9afc72b6b30b88ec941eb1e6ac5448ce587513307c0d27"

  url "https://github.com/casperstorm/ajour/releases/download/#{version}/ajour.dmg"
  appcast "https://github.com/casperstorm/ajour/releases.atom"
  name "Ajour"
  desc "World of Warcraft addon manager"
  homepage "https://github.com/casperstorm/ajour"

  app "Ajour.app"

  zap trash: "~/.config/ajour"
end
