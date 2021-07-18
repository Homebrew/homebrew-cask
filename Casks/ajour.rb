cask "ajour" do
  version "1.2.3"
  sha256 "c35d8c6441d4b8779ec0eca3a295f79e5b2dab6c4413f9ad40daf998f85e0920"

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
