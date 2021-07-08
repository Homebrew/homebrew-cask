cask "ajour" do
  version "1.2.2"
  sha256 "8ce95527ba51d38e999f564d99d296dd092bef7450e9cb81f7da573e61c6606d"

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
