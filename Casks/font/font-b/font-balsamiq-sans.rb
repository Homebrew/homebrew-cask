cask "font-balsamiq-sans" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/balsamiqsans"
  name "Balsamiq Sans"
  homepage "https://fonts.google.com/specimen/Balsamiq+Sans"

  font "BalsamiqSans-Bold.ttf"
  font "BalsamiqSans-BoldItalic.ttf"
  font "BalsamiqSans-Italic.ttf"
  font "BalsamiqSans-Regular.ttf"

  # No zap stanza required
end
