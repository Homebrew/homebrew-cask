cask "font-glass-antiqua" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/glassantiqua/GlassAntiqua-Regular.ttf"
  name "Glass Antiqua"
  homepage "https://fonts.google.com/specimen/Glass+Antiqua"

  font "GlassAntiqua-Regular.ttf"

  # No zap stanza required
end
