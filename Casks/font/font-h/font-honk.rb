cask "font-honk" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/honk/Honk%5BMORF%2CSHLN%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Honk"
  homepage "https://fonts.google.com/specimen/Honk"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Honk",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Honk[MORF,SHLN].ttf"

  # No zap stanza required
end
