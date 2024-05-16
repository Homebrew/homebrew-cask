cask "font-sevillana" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/sevillana/Sevillana-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Sevillana"
  homepage "https://fonts.google.com/specimen/Sevillana"

  font "Sevillana-Regular.ttf"

  # No zap stanza required
end
