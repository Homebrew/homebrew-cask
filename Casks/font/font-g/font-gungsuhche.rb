cask "font-gungsuhche" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/gungsuhche/GungsuhChe-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "GungsuhChe"
  homepage "https://fonts.google.com/specimen/GungsuhChe"

  font "GungsuhChe-Regular.ttf"

  # No zap stanza required
end
