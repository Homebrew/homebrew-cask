cask "font-playwrite-at-guides" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/playwriteatguides"
  name "Playwrite AT Guides"
  homepage "https://fonts.google.com/specimen/Playwrite+AT+Guides"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Playwrite AT Guides",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PlaywriteATGuides-Italic.ttf"
  font "PlaywriteATGuides-Regular.ttf"

  # No zap stanza required
end
