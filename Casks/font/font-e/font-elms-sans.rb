cask "font-elms-sans" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      branch:    "main",
      only_path: "ofl/elmssans"
  name "Elms Sans"
  homepage "https://github.com/mara-aa/elms-sans"

  font "ElmsSans-Italic[wght].ttf"
  font "ElmsSans[wght].ttf"

  # No zap stanza required
end
