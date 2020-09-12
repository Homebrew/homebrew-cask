cask "ajour" do
  version "0.3.2"
  sha256 "c7a7b822a373fddf47682bd739894a7d19e5024436b90afcbc4c994fa0134b45"

  url "https://github.com/casperstorm/ajour/releases/download/#{version}/ajour.dmg"
  appcast "https://github.com/casperstorm/ajour/releases.atom"
  name "Ajour"
  desc "World of Warcraft addon manager"
  homepage "https://github.com/casperstorm/ajour"

  app "Ajour.app"

  zap trash: "~/.config/ajour"
end
