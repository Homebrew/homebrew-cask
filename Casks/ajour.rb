cask "ajour" do
  version "0.6.3"
  sha256 "c218327543b4f5b6686d28e8e83308d09a5e4452dfb11deb9cad20c9e2da3fbd"

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
