cask "pokerth" do
  version "2.1.5"
  sha256 "0445889a1c08593c77f2ddc6362e0258496c23e39d29d7e0fe1a26390a4264db"

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
end
