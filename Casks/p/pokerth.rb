cask "pokerth" do
  version "2.0.8"
  sha256 "c35ba20313883caac2cce5be6910b3c05f3db5f284f509ff12340d7fc0da07c3"

  url "https://downloads.sourceforge.net/pokerth/PokerTH-Widget-#{version}.dmg",
      verified: "downloads.sourceforge.net/pokerth/"
  name "PokerTH"
  desc "Free Texas hold'em poker"
  homepage "https://www.pokerth.net/"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: :monterey

  app "PokerTH.app"

  zap trash: "~/.pokerth"

  caveats do
    requires_rosetta
  end
end
