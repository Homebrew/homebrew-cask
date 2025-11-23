cask "font-dawning-of-a-new-day" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/dawningofanewday/DawningofaNewDay.ttf",
      verified: "github.com/google/fonts/"
  name "Dawning of a New Day"
  homepage "https://fonts.google.com/specimen/Dawning+of+a+New+Day"

  font "DawningofaNewDay.ttf"

  # No zap stanza required
end
