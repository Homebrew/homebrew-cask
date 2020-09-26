cask "ajour" do
  version "0.3.4"
  sha256 "d22c0ada6f2360be5c27c1cfc4dd14a194d9ab621864b14feb7b7175309ce636"

  url "https://github.com/casperstorm/ajour/releases/download/#{version}/ajour.dmg"
  appcast "https://github.com/casperstorm/ajour/releases.atom"
  name "Ajour"
  desc "World of Warcraft addon manager"
  homepage "https://github.com/casperstorm/ajour"

  app "Ajour.app"

  zap trash: "~/.config/ajour"
end
