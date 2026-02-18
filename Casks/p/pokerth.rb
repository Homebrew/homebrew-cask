cask "pokerth" do
  version "2.0"
  sha256 "a70f16efc3b2aa91858d33bc306f2eaf697bf03efc23853c50b9dbad50952e8c"

  url "https://downloads.sourceforge.net/pokerth/PokerTH-#{version}.dmg",
      verified: "downloads.sourceforge.net/pokerth/"
  name "PokerTH"
  desc "Free Texas hold'em poker"
  homepage "https://www.pokerth.net/"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :monterey"

  app "pokerth.app"

  zap trash: "~/.pokerth"

  caveats do
    requires_rosetta
  end
end
