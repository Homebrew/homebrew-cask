cask "pokerth" do
  version "2.0.1"
  sha256 "20ab42295c51145ae348f8f900830e23cc3b35ad338440e9c95d57ed903207cc"

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
