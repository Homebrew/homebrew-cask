cask "font-xmind" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      branch:    "main",
      only_path: "ofl/xmind"
  name "Xmind"
  homepage "https://github.com/lamzhonghang/xmind"

  font "Xmind-Italic[wght].ttf"
  font "Xmind[wght].ttf"

  # No zap stanza required
end
