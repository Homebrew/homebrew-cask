cask "macpar-deluxe" do
  version "5.1.1"
  sha256 :no_check

  url "https://www.xs4all.nl/~gp/MacPAR_deLuxe/MacPARdeLuxe.dmg"
  name "MacPAR deLuxe"
  desc "Utility to combine binary content files after download"
  homepage "https://gp.home.xs4all.nl/Site/MacPAR_deLuxe.html"

  livecheck do
    url :homepage
    regex(/Release\s+notes\s+for\s+version\s+(\d+(?:\.\d+)+)/i)
  end

  app "MacPAR deLuxe.app"

  caveats do
    requires_rosetta
  end
end
