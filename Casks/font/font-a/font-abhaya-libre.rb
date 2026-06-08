cask "font-abhaya-libre" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/abhayalibre"
  name "Abhaya Libre"
  homepage "https://fonts.google.com/specimen/Abhaya+Libre"

  font "AbhayaLibre-Bold.ttf"
  font "AbhayaLibre-ExtraBold.ttf"
  font "AbhayaLibre-Medium.ttf"
  font "AbhayaLibre-Regular.ttf"
  font "AbhayaLibre-SemiBold.ttf"

  # No zap stanza required
end
