cask "font-space-mono" do
  version :latest
  sha256 :no_check

  url "https://github.com/googlefonts/spacemono/archive/refs/heads/main.tar.gz"
  name "Space Mono"
  homepage "https://github.com/googlefonts/spacemono"

  deprecate! date: "2026-05-12", because: :discontinued

  font "spacemono-main/fonts/ttf/SpaceMono-Bold.ttf"
  font "spacemono-main/fonts/ttf/SpaceMono-BoldItalic.ttf"
  font "spacemono-main/fonts/ttf/SpaceMono-Italic.ttf"
  font "spacemono-main/fonts/ttf/SpaceMono-Regular.ttf"

  # No zap stanza required
end
