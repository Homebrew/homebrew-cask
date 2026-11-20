cask "font-xmind" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      branch:    "main",
      only_path: "ofl/xmind"
  name "Xmind"
  homepage "https://fonts.google.com/specimen/Xmind"

  font "Xmind-Italic[wght].ttf"
  font "Xmind[wght].ttf"

  zap :not_required
end
