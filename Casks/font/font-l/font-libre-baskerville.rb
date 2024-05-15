cask "font-libre-baskerville" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/librebaskerville"
  name "Libre Baskerville"
  homepage "https://fonts.google.com/specimen/Libre+Baskerville"

  font "LibreBaskerville-Bold.ttf"
  font "LibreBaskerville-Italic.ttf"
  font "LibreBaskerville-Regular.ttf"

  # No zap stanza required
end
