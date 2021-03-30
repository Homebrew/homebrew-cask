cask "ajour" do
  version "1.0.1"
  sha256 "39cd7623b565e1b61528352e774f7422621c3fa37e7b35f171281c4351327de1"

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
