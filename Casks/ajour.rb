cask "ajour" do
  version "0.7.1"
  sha256 "b2dbf7b16ed0ced74ff8f05b276c7bbc56b2b782cbe38e101bf2c650ba9c9da6"

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
