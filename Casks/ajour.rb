cask "ajour" do
  version "0.5.2"
  sha256 "8748328f72984931dc31824a1faed5846f2ff15d8bfd0e2dfd7b67fac44cac80"

  url "https://github.com/casperstorm/ajour/releases/download/#{version}/ajour.dmg"
  appcast "https://github.com/casperstorm/ajour/releases.atom"
  name "Ajour"
  desc "World of Warcraft addon manager"
  homepage "https://github.com/casperstorm/ajour"

  app "Ajour.app"

  zap trash: "~/.config/ajour"
end
