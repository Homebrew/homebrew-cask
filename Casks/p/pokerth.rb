cask "pokerth" do
  version "2.1.4"
  sha256 "777f8557bf4474153f554d438ae911b9afc6c77ef779102842577e429ffdabf0"

  url "https://downloads.sourceforge.net/pokerth/PokerTH-#{version}-Combined.dmg",
      verified: "downloads.sourceforge.net/pokerth/"
  name "PokerTH"
  desc "Free Texas hold'em poker"
  homepage "https://www.pokerth.net/"

  livecheck do
    url "https://sourceforge.net/projects/pokerth/rss?path=/pokerth"
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: :monterey

  app "PokerTH.app"

  zap trash: "~/.pokerth"

  caveats do
    requires_rosetta
  end
end
