cask "scribus" do
  arch arm: "-arm64"

  version "1.6.1"
  sha256 arm:   "2de62c9312bc0a9532bf6db6eb479b0cb56b10434a0e6aa47de059d3c881ecc8",
         intel: "b6f788c30b1ca8f628f3d1851859e1831705520e36b59090e5705b7ebc7fcfeb"

  url "https://downloads.sourceforge.net/scribus/scribus/#{version}/scribus-#{version}#{arch}.dmg",
      verified: "sourceforge.net/scribus/"
  name "Scribus"
  desc "Free and open-source page layout program"
  homepage "https://www.scribus.net/"

  livecheck do
    url "https://sourceforge.net/projects/scribus/rss?path=/scribus"
    regex(%r{url=.*?/scribus[._-]v?(\d+(?:\.\d+)+)(?:#{arch})?\.(?:dmg|pkg)}i)
  end

  app "Scribus.app"

  zap trash: [
    "~/Library/Application Support/Scribus",
    "~/Library/Preferences/Scribus",
    "~/Library/Saved Application State/net.scribus.savedState",
  ]
end
