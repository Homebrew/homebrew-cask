cask "font-ysabeau-office" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/ysabeauoffice"
  name "Ysabeau Office"
  homepage "https://fonts.google.com/specimen/Ysabeau+Office"

  font "YsabeauOffice-Italic[wght].ttf"
  font "YsabeauOffice[wght].ttf"

  # No zap stanza required
end
