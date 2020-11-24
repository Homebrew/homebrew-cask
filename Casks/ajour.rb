cask "ajour" do
  version "0.5.3"
  sha256 "02b556cba53208bb043b855fa64619bda279a2e5f475bed46f0804a8d9432017"

  url "https://github.com/casperstorm/ajour/releases/download/#{version}/ajour.dmg"
  appcast "https://github.com/casperstorm/ajour/releases.atom"
  name "Ajour"
  desc "World of Warcraft addon manager"
  homepage "https://github.com/casperstorm/ajour"

  app "Ajour.app"

  zap trash: "~/.config/ajour"
end
