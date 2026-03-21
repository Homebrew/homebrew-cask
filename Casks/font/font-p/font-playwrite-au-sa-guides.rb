cask "font-playwrite-au-sa-guides" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwriteausaguides/PlaywriteAUSAGuides-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite AU SA Guides"
  homepage "https://fonts.google.com/specimen/Playwrite+AU+SA+Guides"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Playwrite AU SA Guides",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PlaywriteAUSAGuides-Regular.ttf"

  # No zap stanza required
end
