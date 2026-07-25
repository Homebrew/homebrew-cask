cask "font-righteous" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/righteous/Righteous-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Righteous"
  homepage "https://fonts.google.com/specimen/Righteous"

  font "Righteous-Regular.ttf"

  # No zap stanza required
end
