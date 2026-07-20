cask "font-rancho" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/apache/rancho/Rancho-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Rancho"
  homepage "https://fonts.google.com/specimen/Rancho"

  font "Rancho-Regular.ttf"

  # No zap stanza required
end
