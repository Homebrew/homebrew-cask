cask "font-questrial" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/questrial/Questrial-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Questrial"
  homepage "https://fonts.google.com/specimen/Questrial"

  font "Questrial-Regular.ttf"

  # No zap stanza required
end
