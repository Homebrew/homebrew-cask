cask "itunes-producer" do
  version "3.1.4"
  sha256 :no_check

  url "https://itunespartner.apple.com/assets/downloads/iTunesProducer.dmg"
  name "iTunes Producer"
  desc "Submit book details, pricing, and files to Apple Books"
  homepage "https://itunespartner.apple.com/books/tools"

  livecheck do
    url "https://help.apple.com/itc/musicitp/en.lproj/navigation.json"
    regex(/iTunes\s+Producer\s+v?(\d+(?:\.\d+)+)/i)
    strategy :json do |json, regex|
      match = json["title"]&.match(regex)
      next if match.blank?

      match[1]
    end
  end

  pkg "iTunesProducer.pkg"

  uninstall pkgutil: "com.apple.pkg.iTunesProducer"

  caveats do
    requires_rosetta
  end
end
