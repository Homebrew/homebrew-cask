cask "enzymex" do
  version "3.3.3"
  sha256 :no_check

  url "http://downloads.nucleobytes.com/enzymex.dmg"
  appcast "https://nucleobytes.com/enzymex/index.html"
  name "EnzymeX"
  homepage "https://nucleobytes.com/enzymex/index.html"

  app "EnzymeX.app"
end
