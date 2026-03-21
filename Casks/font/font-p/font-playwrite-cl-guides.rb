cask "font-playwrite-cl-guides" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwriteclguides/PlaywriteCLGuides-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite CL Guides"
  homepage "https://fonts.google.com/specimen/Playwrite+CL+Guides"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Playwrite CL Guides",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PlaywriteCLGuides-Regular.ttf"

  # No zap stanza required
end
