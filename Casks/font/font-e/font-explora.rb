cask "font-explora" do
  version "1.010"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/explora/Explora-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Explora"
  homepage "https://fonts.google.com/specimen/Explora"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Explora",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Explora-Regular.ttf"

  # No zap stanza required
end
