cask "itunes-producer" do
  version "3.1.2"
  sha256 "21079edbf0d559db4403a76fb7f18f02c93e5fbb68006bb5aaf55af329301ded"

  url "https://itunespartner.apple.com/assets/downloads/iTunesProducer_#{version}.dmg"
  name "iTunes Producer"
  homepage "https://itunesconnect.apple.com/WebObjects/iTunesConnect.woa/ra/ng/resources_page"

  livecheck do
    url "https://itunespartner.apple.com/books/tools"
    strategy :page_match
    regex(/(\d+(?:\.\d+)*).dmg/)
  end

  pkg "iTunesProducer.pkg"

  uninstall pkgutil: "com.apple.pkg.iTunesProducer"
end
