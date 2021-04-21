cask "scribus" do
  if MacOS.version <= :mojave
    version "1.4.8"
    sha256 "9626c35ca5de5da59ac983efac3572318d327b3a921522c9f80a525b039a0af5"

    url "https://downloads.sourceforge.net/scribus/scribus/#{version}/scribus-#{version}.dmg",
        verified: "sourceforge.net/scribus/"
    appcast "https://www.scribus.net/downloads/stable-branch/"
  else
    version "1.5.6.1"
    sha256 "5a79350884a405e223789bc65038d7c40f41c97bf352e8da0d96a9444a0bddd5"

    url "https://downloads.sourceforge.net/scribus/scribus-devel/#{version}/scribus-#{version}.dmg",
        verified: "sourceforge.net/scribus/"
    appcast "https://www.scribus.net/downloads/unstable-branch/"
  end

  name "Scribus"
  desc "Free and open-source page layout program"
  homepage "https://www.scribus.net/"

  app "Scribus.app"
end
