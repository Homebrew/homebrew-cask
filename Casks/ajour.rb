cask "ajour" do
  version "1.2.5"
  sha256 "c1ac5076499cc075377433b4e9c7b84375423956256b418c27c7826c762789f7"

  url "https://github.com/casperstorm/ajour/releases/download/#{version}/ajour.dmg"
  name "Ajour"
  desc "World of Warcraft addon manager"
  homepage "https://github.com/casperstorm/ajour"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  app "Ajour.app"

  zap trash: "~/.config/ajour"
end
