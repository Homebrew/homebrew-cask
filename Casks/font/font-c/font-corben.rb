cask "font-corben" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/corben"
  name "Corben"
  homepage "https://fonts.google.com/specimen/Corben"

  font "Corben-Bold.ttf"
  font "Corben-Regular.ttf"

  # No zap stanza required
end
