cask "font-playwrite-ie-guides" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwriteieguides/PlaywriteIEGuides-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite IE Guides"
  homepage "https://fonts.google.com/specimen/Playwrite+IE+Guides"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Playwrite IE Guides",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PlaywriteIEGuides-Regular.ttf"

  # No zap stanza required
end
