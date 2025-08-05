cask "font-league-gothic" do
  version "1.601"
  sha256 "a1d9d3aaba2abda2791eaad03d51dbfd97aa6f6f2ea23c3b2b2b31f90d8cbeb5"

  url "https://github.com/theleagueof/league-gothic/releases/download/#{version}/LeagueGothic-#{version}.tar.xz",
      verified: "github.com/theleagueof/league-gothic/"
  name "League Gothic"
  homepage "https://www.theleagueofmoveabletype.com/league-gothic"

  font "LeagueGothic-#{version}/static/OTF/LeagueGothic-Regular.otf"
  font "LeagueGothic-#{version}/static/OTF/LeagueGothic-Italic.otf"
  font "LeagueGothic-#{version}/static/OTF/LeagueGothic-Condensed.otf"
  font "LeagueGothic-#{version}/static/OTF/LeagueGothic-CondensedItalic.otf"

  # No zap stanza required
end
