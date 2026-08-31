cask "font-palanquin-dark" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      branch:    "main",
      only_path: "ofl/palanquindark"
  name "Palanquin Dark"
  homepage "https://fonts.google.com/specimen/Palanquin+Dark"

  font "PalanquinDark-Bold.ttf"
  font "PalanquinDark-Medium.ttf"
  font "PalanquinDark-Regular.ttf"
  font "PalanquinDark-SemiBold.ttf"

  # No zap stanza required
end
