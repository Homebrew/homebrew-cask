cask "font-coda" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/coda"
  name "Coda"
  homepage "https://fonts.google.com/specimen/Coda"

  font "Coda-ExtraBold.ttf"
  font "Coda-Regular.ttf"

  # No zap stanza required
end
