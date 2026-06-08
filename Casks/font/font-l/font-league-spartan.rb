cask "font-league-spartan" do
  version "2.220"
  sha256 "141a96e215554871504dca16be159901bbb0d56f3a84224f39fe472c7ab4ef47"

  url "https://github.com/theleagueof/league-spartan/releases/download/#{version}/LeagueSpartan-#{version}.tar.xz",
      verified: "github.com/theleagueof/league-spartan/"
  name "League Spartan"
  homepage "https://www.theleagueofmoveabletype.com/league-spartan"

  font "LeagueSpartan-#{version}/static/OTF/LeagueSpartan-ExtraLight.otf"
  font "LeagueSpartan-#{version}/static/OTF/LeagueSpartan-Light.otf"
  font "LeagueSpartan-#{version}/static/OTF/LeagueSpartan-Medium.otf"
  font "LeagueSpartan-#{version}/static/OTF/LeagueSpartan-Regular.otf"
  font "LeagueSpartan-#{version}/static/OTF/LeagueSpartan-SemiBold.otf"
  font "LeagueSpartan-#{version}/static/OTF/LeagueSpartan-Bold.otf"
  font "LeagueSpartan-#{version}/static/OTF/LeagueSpartan-ExtraBold.otf"
  font "LeagueSpartan-#{version}/static/OTF/LeagueSpartan-Black.otf"
  font "LeagueSpartan-#{version}/variable/TTF/LeagueSpartan-VF.ttf"

  # No zap stanza required
end
