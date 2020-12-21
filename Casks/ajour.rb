cask "ajour" do
  version "0.6.0"
  sha256 "75e438111075b553fdcc5e0ec7d7349360a4ce7d4187e82866d5424dbb37e14a"

  url "https://github.com/casperstorm/ajour/releases/download/#{version}/ajour.dmg"
  appcast "https://github.com/casperstorm/ajour/releases.atom"
  name "Ajour"
  desc "World of Warcraft addon manager"
  homepage "https://github.com/casperstorm/ajour"

  app "Ajour.app"

  zap trash: "~/.config/ajour"
end
