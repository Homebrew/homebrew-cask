cask "ajour" do
  version "0.4.3"
  sha256 "e777cd32aa8c29148bb6fa0e8fd7b03b19a7dac3b2d3e259890deb33af7a24fc"

  url "https://github.com/casperstorm/ajour/releases/download/#{version}/ajour.dmg"
  appcast "https://github.com/casperstorm/ajour/releases.atom"
  name "Ajour"
  desc "World of Warcraft addon manager"
  homepage "https://github.com/casperstorm/ajour"

  app "Ajour.app"

  zap trash: "~/.config/ajour"
end
