cask "font-bevan" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/bevan"
  name "Bevan"
  homepage "https://fonts.google.com/specimen/Bevan"

  font "Bevan-Italic.ttf"
  font "Bevan-Regular.ttf"

  # No zap stanza required
end
