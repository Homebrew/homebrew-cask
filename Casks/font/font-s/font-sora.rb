cask "font-sora" do
  version "2.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/sora/Sora%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Sora"
  homepage "https://fonts.google.com/specimen/Sora"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Sora",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Sora[wght].ttf"

  # No zap stanza required
end
