cask "font-bona-nova-sc" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/bonanovasc"
  name "Bona Nova SC"
  homepage "https://fonts.google.com/specimen/Bona+Nova+SC"

  font "BonaNovaSC-Bold.ttf"
  font "BonaNovaSC-Italic.ttf"
  font "BonaNovaSC-Regular.ttf"

  # No zap stanza required
end
