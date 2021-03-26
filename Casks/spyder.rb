cask "spyder" do
  version "4.2.5"
  sha256 "dc70ac84b1faedaab0f57386b2ccf63c668bef685bc341f8238b7b71849cc081"

  url "https://github.com/spyder-ide/spyder/releases/download/v#{version}/Spyder.dmg",
      verified: "github.com/spyder-ide/spyder/"
  name "Spyder"
  desc "Scientific Python IDE"
  homepage "https://www.spyder-ide.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Spyder.app"
end
