cask "font-solway" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/solway"
  name "Solway"
  homepage "https://fonts.google.com/specimen/Solway"

  font "Solway-Bold.ttf"
  font "Solway-ExtraBold.ttf"
  font "Solway-Light.ttf"
  font "Solway-Medium.ttf"
  font "Solway-Regular.ttf"

  # No zap stanza required
end
