cask "font-playwrite-pe-guides" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritepeguides/PlaywritePEGuides-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite PE Guides"
  homepage "https://fonts.google.com/specimen/Playwrite+PE+Guides"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Playwrite PE Guides",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PlaywritePEGuides-Regular.ttf"

  # No zap stanza required
end
