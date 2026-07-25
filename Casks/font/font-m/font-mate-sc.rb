cask "font-mate-sc" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/matesc/MateSC-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Mate SC"
  homepage "https://fonts.google.com/specimen/Mate+SC"

  font "MateSC-Regular.ttf"

  # No zap stanza required
end
