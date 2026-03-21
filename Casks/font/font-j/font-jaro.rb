cask "font-jaro" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/jaro/Jaro%5Bopsz%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Jaro"
  homepage "https://fonts.google.com/specimen/Jaro"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Jaro",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Jaro[opsz].ttf"

  # No zap stanza required
end
