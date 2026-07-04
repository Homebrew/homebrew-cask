cask "pokerth" do
  version "2.1.0"
  sha256 "9c2384aaf5a08b52ce2cc0f39a2843027e516a79cf0d2075fb7362810d4095db"

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
