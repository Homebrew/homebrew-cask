cask "font-funnel-sans" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      branch:    "main",
      only_path: "ofl/funnelsans"
  name "Funnel Sans"
  homepage "https://github.com/Dicotype/Funnel"

  font "FunnelSans-Italic[wght].ttf"
  font "FunnelSans[wght].ttf"

  # No zap stanza required
end
