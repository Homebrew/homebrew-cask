cask "ajour" do
  version "0.7.0"
  sha256 "6e38c55032c374947df8760f11f462fc2ada605f85e1ae60d4b9b3003b7dfdcf"

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
