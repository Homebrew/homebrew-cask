cask "ajour" do
  version "0.3.3"
  sha256 "54462bff2ae91e378ae8845b0d043aa2f80671d8a75e3a8d7cd5ad4a1cd2d2ec"

  url "https://github.com/casperstorm/ajour/releases/download/#{version}/ajour.dmg"
  appcast "https://github.com/casperstorm/ajour/releases.atom"
  name "Ajour"
  desc "World of Warcraft addon manager"
  homepage "https://github.com/casperstorm/ajour"

  app "Ajour.app"

  zap trash: "~/.config/ajour"
end
