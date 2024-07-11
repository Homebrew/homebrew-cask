cask "freemind" do
  version "1.0.1"
  sha256 "0bd93317567f947e7fa3b3e8d2e0d908300642edc5e07f1929157469ffd14ea3"

  url "https://downloads.sourceforge.net/freemind/freemind/#{version}/FreeMind_#{version}.dmg",
      verified: "downloads.sourceforge.net/freemind/"
  name "FreeMind"
  desc "Mind-mapping software written in Java"
  homepage "https://freemind.sourceforge.io/wiki/index.php/Main_Page"

  livecheck do
    url "https://sourceforge.net/projects/freemind/rss?path=/freemind"
  end

  app "FreeMind.app"

  caveats do
    requires_rosetta
  end
end
