cask "hydrogen" do
  version "1.0.1"
  sha256 "20b33e3b8c308a2fb8a82dd0712c301c1187ec57b2da934ddfc1167a11252a47"

  url "https://downloads.sourceforge.net/hydrogen/Hydrogen-#{version}.dmg",
      verified: "downloads.sourceforge.net/hydrogen/"
  appcast "https://sourceforge.net/projects/hydrogen/rss?path=/Hydrogen"
  name "Hydrogen"
  desc "Software synthesizer"
  homepage "http://www.hydrogen-music.org/"

  depends_on macos: ">= :sierra"

  app "hydrogen.app"

  zap trash: "~/Library/Application Support/Hydrogen"
end
