cask "ajour" do
  version "1.2.1"
  sha256 "f7f818bfdfdc8c7c9536ea9bf779ce1fe652e2aeadaa963a971ab57926775149"

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
