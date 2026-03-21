cask "font-ballet" do
  version "1.100"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/ballet/Ballet%5Bopsz%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Ballet"
  homepage "https://fonts.google.com/specimen/Ballet"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Ballet",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Ballet[opsz].ttf"

  # No zap stanza required
end
