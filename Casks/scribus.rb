cask "scribus" do
  if MacOS.version <= :mojave
    version "1.4.8"
    sha256 "9626c35ca5de5da59ac983efac3572318d327b3a921522c9f80a525b039a0af5"

    # sourceforge.net/scribus/ was verified as official when first introduced to the cask
    url "https://downloads.sourceforge.net/scribus/scribus/#{version}/scribus-#{version}.dmg"
    appcast "https://www.scribus.net/downloads/stable-branch/"
  else
    version "1.5.6"
    sha256 "9626c35ca5de5da59ac983efac3572318d327b3a921522c9f80a525b039a0af5"

    # sourceforge.net/scribus-devel/ was verified as official when first introduced to the cask
    url "https://downloads.sourceforge.net/scribus/scribus-devel/#{version}/scribus-#{version}.dmg"
    appcast "https://www.scribus.net/downloads/unstable-branch/"
  end

  name "Scribus"
  desc "Free and open-source page layout program"
  homepage "https://www.scribus.net/"

  app "Scribus.app"
end
