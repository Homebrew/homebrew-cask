cask "font-artifika" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/artifika/Artifika-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Artifika"
  homepage "https://fonts.google.com/specimen/Artifika"

  font "Artifika-Regular.ttf"

  # No zap stanza required
end
