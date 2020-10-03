cask "ajour" do
  version "0.3.5"
  sha256 "c5b4f0911dae3058efbacfdf13dd5aa337f9ecf66e1c43e16c9f96b41e07a008"

  url "https://github.com/casperstorm/ajour/releases/download/#{version}/ajour.dmg"
  appcast "https://github.com/casperstorm/ajour/releases.atom"
  name "Ajour"
  desc "World of Warcraft addon manager"
  homepage "https://github.com/casperstorm/ajour"

  app "Ajour.app"

  zap trash: "~/.config/ajour"
end
