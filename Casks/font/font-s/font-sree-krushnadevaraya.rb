cask "font-sree-krushnadevaraya" do
  version "1.0.5"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/sreekrushnadevaraya/SreeKrushnadevaraya-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Sree Krushnadevaraya"
  homepage "https://fonts.google.com/specimen/Sree+Krushnadevaraya"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Sree Krushnadevaraya",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "SreeKrushnadevaraya-Regular.ttf"

  # No zap stanza required
end
