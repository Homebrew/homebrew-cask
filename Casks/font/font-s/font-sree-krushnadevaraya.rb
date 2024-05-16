cask "font-sree-krushnadevaraya" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/sreekrushnadevaraya/SreeKrushnadevaraya-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Sree Krushnadevaraya"
  homepage "https://fonts.google.com/specimen/Sree+Krushnadevaraya"

  font "SreeKrushnadevaraya-Regular.ttf"

  # No zap stanza required
end
