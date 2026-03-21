cask "font-playwrite-hr-lijeva-guides" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritehrlijevaguides/PlaywriteHRLijevaGuides-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite HR Lijeva Guides"
  homepage "https://fonts.google.com/specimen/Playwrite+HR+Lijeva+Guides"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Playwrite HR Lijeva Guides",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PlaywriteHRLijevaGuides-Regular.ttf"

  # No zap stanza required
end
