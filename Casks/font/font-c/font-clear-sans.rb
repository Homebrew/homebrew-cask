cask "font-clear-sans" do
  version :latest
  sha256 :no_check

  url "https://github.com/intel/clear-sans.git",
      branch:    "main",
      only_path: "TTF"
  name "Clear Sans"
  homepage "https://github.com/intel/clear-sans"

  deprecate! date: "2023-12-17", because: :discontinued

  font "ClearSans-Bold.ttf"
  font "ClearSans-BoldItalic.ttf"
  font "ClearSans-Italic.ttf"
  font "ClearSans-Light.ttf"
  font "ClearSans-Medium.ttf"
  font "ClearSans-MediumItalic.ttf"
  font "ClearSans-Regular.ttf"
  font "ClearSans-Thin.ttf"

  # No zap stanza required
end
