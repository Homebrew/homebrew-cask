cask "ajour" do
  version "0.4.0"
  sha256 "a3448469bc3a3eba63cad60a7c90d1d1c08b2f9f25ae6ade8a3878de6e3686de"

  url "https://github.com/casperstorm/ajour/releases/download/#{version}/ajour.dmg"
  appcast "https://github.com/casperstorm/ajour/releases.atom"
  name "Ajour"
  desc "World of Warcraft addon manager"
  homepage "https://github.com/casperstorm/ajour"

  app "Ajour.app"

  zap trash: "~/.config/ajour"
end
