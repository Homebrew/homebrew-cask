cask "font-ropa-sans" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/ropasans"
  name "Ropa Sans"
  homepage "https://fonts.google.com/specimen/Ropa+Sans"

  font "RopaSans-Italic.ttf"
  font "RopaSans-Regular.ttf"

  # No zap stanza required
end
