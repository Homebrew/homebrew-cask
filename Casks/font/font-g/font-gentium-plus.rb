cask "font-gentium-plus" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/gentiumplus"
  name "Gentium Plus"
  homepage "https://fonts.google.com/specimen/Gentium+Plus"

  font "GentiumPlus-Bold.ttf"
  font "GentiumPlus-BoldItalic.ttf"
  font "GentiumPlus-Italic.ttf"
  font "GentiumPlus-Regular.ttf"

  # No zap stanza required
end
