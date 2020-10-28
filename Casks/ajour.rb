cask "ajour" do
  version "0.4.4"
  sha256 "5823f9321dc3b57023b0d3a51875fc18397d4efc5f22cd864532da49e14274cd"

  url "https://github.com/casperstorm/ajour/releases/download/#{version}/ajour.dmg"
  appcast "https://github.com/casperstorm/ajour/releases.atom"
  name "Ajour"
  desc "World of Warcraft addon manager"
  homepage "https://github.com/casperstorm/ajour"

  app "Ajour.app"

  zap trash: "~/.config/ajour"
end
