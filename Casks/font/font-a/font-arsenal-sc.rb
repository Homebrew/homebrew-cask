cask "font-arsenal-sc" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      branch:    "main",
      only_path: "ofl/arsenalsc"
  name "Arsenal SC"
  homepage "https://github.com/alexeiva/Arsenal"

  font "ArsenalSC-Bold.ttf"
  font "ArsenalSC-BoldItalic.ttf"
  font "ArsenalSC-Italic.ttf"
  font "ArsenalSC-Regular.ttf"

  # No zap stanza required
end
