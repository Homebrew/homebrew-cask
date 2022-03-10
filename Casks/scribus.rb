cask "scribus" do
  version "1.5.6.1"
  sha256 "5a79350884a405e223789bc65038d7c40f41c97bf352e8da0d96a9444a0bddd5"

  url "https://downloads.sourceforge.net/scribus/scribus-devel/#{version}/scribus-#{version}.dmg",
      verified: "sourceforge.net/scribus/"
  appcast "https://www.scribus.net/downloads/unstable-branch/"
  name "Scribus"
  desc "Free and open-source page layout program"
  homepage "https://www.scribus.net/"

  app "Scribus.app"
end
