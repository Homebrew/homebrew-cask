cask "font-copse" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/copse/Copse-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Copse"
  homepage "https://fonts.google.com/specimen/Copse"

  font "Copse-Regular.ttf"

  # No zap stanza required
end
