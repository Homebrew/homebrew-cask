cask "pokerth" do
  version "2.0.2"
  sha256 "2281d74b944584a0577436829d9b316a7aa15e3c871bcca99318eb868bcd4483"

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
