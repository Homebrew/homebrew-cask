cask "font-miama" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/miama/Miama-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Miama"
  homepage "https://fonts.google.com/specimen/Miama"

  font "Miama-Regular.ttf"

  # No zap stanza required
end
