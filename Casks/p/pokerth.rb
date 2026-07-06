cask "pokerth" do
  version "2.1.1"
  sha256 "6eb8ea1327608c52fce71c55a020230802a95260907c42f71b53c4dfe2b21807"

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
