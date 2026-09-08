cask "font-nevermind" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      branch:    "main",
      only_path: "ofl/nevermind"
  name "Nevermind"
  homepage "https://github.com/lamzhonghang/nevermind"

  font "Nevermind-Italic[wght].ttf"
  font "Nevermind[wght].ttf"

  # No zap stanza required
end
