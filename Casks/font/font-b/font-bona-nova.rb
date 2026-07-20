cask "font-bona-nova" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/bonanova"
  name "Bona Nova"
  homepage "https://fonts.google.com/specimen/Bona+Nova"

  font "BonaNova-Bold.ttf"
  font "BonaNova-Italic.ttf"
  font "BonaNova-Regular.ttf"

  # No zap stanza required
end
