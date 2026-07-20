cask "font-playwrite-it-moderna-guides" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwriteitmodernaguides/PlaywriteITModernaGuides-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite IT Moderna Guides"
  homepage "https://fonts.google.com/specimen/Playwrite+IT+Moderna+Guides"

  font "PlaywriteITModernaGuides-Regular.ttf"

  # No zap stanza required
end
