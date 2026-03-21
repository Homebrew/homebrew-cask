cask "font-playwrite-de-sas-guides" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritedesasguides/PlaywriteDESASGuides-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite DE SAS Guides"
  homepage "https://fonts.google.com/specimen/Playwrite+DE+SAS+Guides"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Playwrite DE SAS Guides",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PlaywriteDESASGuides-Regular.ttf"

  # No zap stanza required
end
