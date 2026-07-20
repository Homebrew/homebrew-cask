cask "font-allura" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/allura/Allura-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Allura"
  homepage "https://fonts.google.com/specimen/Allura"

  font "Allura-Regular.ttf"

  # No zap stanza required
end
