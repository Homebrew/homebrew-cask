cask "pokerth" do
  version "2.1.6"
  sha256 "be7d11d357156b729e9a52dbc53d344a8ee189480b0acff857950570f830ae34"

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
