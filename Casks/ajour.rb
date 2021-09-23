cask "ajour" do
  version "1.3.1"
  sha256 "8e9fcc458b8b4df37af5f4b9d1d5b45695b5c67bb264ab37ff7fdf064908ec6f"

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
