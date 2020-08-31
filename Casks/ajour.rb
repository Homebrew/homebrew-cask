cask "ajour" do
  version "0.2.3"
  sha256 "084ad4e34ff28dd20dfcfe36c89233137b9380fc9d5f589c6a96a54326a32313"

  url "https://github.com/casperstorm/ajour/releases/download/#{version}/ajour-#{version}.dmg"
  appcast "https://github.com/casperstorm/ajour/releases.atom"
  name "Ajour"
  desc "World of Warcraft addon manager"
  homepage "https://github.com/casperstorm/ajour"

  app "Ajour.app"

  zap trash: "~/.config/ajour"
end
