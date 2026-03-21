cask "font-playwrite-de-va-guides" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritedevaguides/PlaywriteDEVAGuides-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite DE VA Guides"
  homepage "https://fonts.google.com/specimen/Playwrite+DE+VA+Guides"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Playwrite DE VA Guides",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PlaywriteDEVAGuides-Regular.ttf"

  # No zap stanza required
end
