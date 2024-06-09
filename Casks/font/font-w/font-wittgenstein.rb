cask "font-wittgenstein" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      branch:    "main",
      only_path: "ofl/wittgenstein"
  name "Wittgenstein"
  homepage "https://github.com/jrgdrs/Wittgenstein"

  font "Wittgenstein-Italic[wght].ttf"
  font "Wittgenstein[wght].ttf"

  # No zap stanza required
end
