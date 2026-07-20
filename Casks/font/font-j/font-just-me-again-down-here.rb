cask "font-just-me-again-down-here" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/justmeagaindownhere/JustMeAgainDownHere.ttf",
      verified: "github.com/google/fonts/"
  name "Just Me Again Down Here"
  homepage "https://fonts.google.com/specimen/Just+Me+Again+Down+Here"

  font "JustMeAgainDownHere.ttf"

  # No zap stanza required
end
