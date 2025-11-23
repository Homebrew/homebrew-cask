cask "font-league-script" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/leaguescript/LeagueScript-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "League Script"
  homepage "https://fonts.google.com/specimen/League+Script"

  font "LeagueScript-Regular.ttf"

  # No zap stanza required
end
