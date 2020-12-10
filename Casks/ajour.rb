cask "ajour" do
  version "0.5.4"
  sha256 "7a00548b5f9c6fbc183fb5501c9936853850131bc803b550ab20886e8e8b811f"

  url "https://github.com/casperstorm/ajour/releases/download/#{version}/ajour.dmg"
  appcast "https://github.com/casperstorm/ajour/releases.atom"
  name "Ajour"
  desc "World of Warcraft addon manager"
  homepage "https://github.com/casperstorm/ajour"

  app "Ajour.app"

  zap trash: "~/.config/ajour"
end
