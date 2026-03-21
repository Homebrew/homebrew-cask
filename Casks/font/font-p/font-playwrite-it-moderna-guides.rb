cask "font-playwrite-it-moderna-guides" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwriteitmodernaguides/PlaywriteITModernaGuides-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite IT Moderna Guides"
  homepage "https://fonts.google.com/specimen/Playwrite+IT+Moderna+Guides"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Playwrite IT Moderna Guides",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PlaywriteITModernaGuides-Regular.ttf"

  # No zap stanza required
end
