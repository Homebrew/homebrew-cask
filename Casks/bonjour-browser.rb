cask "bonjour-browser" do
  version "1.5.6"
  sha256 :no_check

  url "http://www.tildesoft.com/files/BonjourBrowser.dmg"
  name "Bonjour Browser"
  homepage "http://www.tildesoft.com/"

  depends_on macos: "<= :mojave"

  app "Bonjour Browser.app"

  caveats do
    discontinued
  end
end
