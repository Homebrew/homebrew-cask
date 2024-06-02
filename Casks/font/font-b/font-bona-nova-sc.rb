cask "font-bona-nova-sc" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      branch:    "main",
      only_path: "ofl/bonanovasc"
  name "Bona Nova SC"
  homepage "https://github.com/kosmynkab/Bona-Nova"

  font "BonaNovaSC-Bold.ttf"
  font "BonaNovaSC-Italic.ttf"
  font "BonaNovaSC-Regular.ttf"

  # No zap stanza required
end
