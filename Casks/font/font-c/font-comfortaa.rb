cask "font-comfortaa" do
  version "3.105"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/comfortaa/Comfortaa%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Comfortaa"
  homepage "https://fonts.google.com/specimen/Comfortaa"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Comfortaa",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Comfortaa[wght].ttf"

  # No zap stanza required
end
