cask "spyder" do
  version "4.2.0"
  sha256 "4c92ca2e93498a93d14c49e8c46b61220d3cd99c003ffaf176e6feaa3d70887a"

  url "https://github.com/spyder-ide/spyder/releases/download/v#{version}/Spyder.dmg",
      verified: "github.com/spyder-ide/spyder/"
  appcast "https://github.com/spyder-ide/spyder/releases.atom"
  name "Spyder"
  desc "Scientific Python IDE"
  homepage "https://www.spyder-ide.org/"

  app "Spyder.app"
end
