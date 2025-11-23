cask "font-engagement" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/engagement/Engagement-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Engagement"
  homepage "https://fonts.google.com/specimen/Engagement"

  font "Engagement-Regular.ttf"

  # No zap stanza required
end
