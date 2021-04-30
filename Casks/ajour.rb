cask "ajour" do
  version "1.1.0"
  sha256 "2f6f72088a4cd88c9a4fd9dbdc0015713a8c5efb94e50672b3e0d3a6319b7cbb"

  url "https://github.com/casperstorm/ajour/releases/download/#{version}/ajour.dmg"
  name "Ajour"
  desc "World of Warcraft addon manager"
  homepage "https://github.com/casperstorm/ajour"

  livecheck do
    url :url
    strategy :git
    regex(/^(\d+(?:\.\d+)*)$/i)
  end

  app "Ajour.app"

  zap trash: "~/.config/ajour"
end
