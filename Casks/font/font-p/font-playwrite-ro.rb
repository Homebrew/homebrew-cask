cask "font-playwrite-ro" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritero/PlaywriteRO%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite RO"
  homepage "https://fonts.google.com/specimen/Playwrite+RO"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Playwrite RO",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PlaywriteRO[wght].ttf"

  # No zap stanza required
end
