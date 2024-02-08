cask "itunes-producer" do
  version "3.1.4,1085"
  sha256 :no_check

  url "https://itunespartner.apple.com/assets/downloads/iTunesProducer.dmg"
  name "iTunes Producer"
  desc "Submit book details, pricing, and files to Apple Books"
  homepage "https://itunespartner.apple.com/books/tools"

  livecheck do
    url :url
    strategy :extract_plist
  end

  pkg "iTunesProducer.pkg"

  uninstall pkgutil: "com.apple.pkg.iTunesProducer"
end
