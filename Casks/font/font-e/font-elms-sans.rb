cask "font-elms-sans" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/elmssans"
  name "Elms Sans"
  homepage "https://fonts.google.com/specimen/Elms+Sans"

  font "ElmsSans-Italic[wght].ttf"
  font "ElmsSans[wght].ttf"

  # No zap stanza required
end
