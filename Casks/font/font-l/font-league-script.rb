cask "font-league-script" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/leaguescript/LeagueScript-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "League Script"
  homepage "https://fonts.google.com/specimen/League+Script"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "League Script",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "LeagueScript-Regular.ttf"

  # No zap stanza required
end
