cask "pokerth" do
  version "2.1.7"
  sha256 "12dd48e42eb6f629604bb519a79079282d74302de044283e97a7e1dea0954193"

  url "https://downloads.sourceforge.net/pokerth/PokerTH-#{version}-Combined.dmg"
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
