cask "font-playwrite-at-guides" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/playwriteatguides"
  name "Playwrite AT Guides"
  homepage "https://fonts.google.com/specimen/Playwrite+AT+Guides"

  font "PlaywriteATGuides-Italic.ttf"
  font "PlaywriteATGuides-Regular.ttf"

  # No zap stanza required
end
