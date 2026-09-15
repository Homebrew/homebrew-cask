cask "font-inter-tight" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      branch:    "main",
      only_path: "ofl/intertight"
  name "Inter Tight"
  homepage "https://fonts.google.com/specimen/Inter+Tight"

  font "InterTight-Italic[wght].ttf"
  font "InterTight[wght].ttf"

  # No zap stanza required
end
