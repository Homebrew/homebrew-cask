cask "ajour" do
  version "0.6.1"
  sha256 "7b796acbd86e4c3bcdef3a12e0316dd251d379496981ee410a052c7ffe18579c"

  url "https://github.com/casperstorm/ajour/releases/download/#{version}/ajour.dmg"
  appcast "https://github.com/casperstorm/ajour/releases.atom"
  name "Ajour"
  desc "World of Warcraft addon manager"
  homepage "https://github.com/casperstorm/ajour"

  app "Ajour.app"

  zap trash: "~/.config/ajour"
end
