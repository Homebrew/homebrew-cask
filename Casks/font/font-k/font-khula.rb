cask "font-khula" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/khula"
  name "Khula"
  homepage "https://fonts.google.com/specimen/Khula"

  font "Khula-Bold.ttf"
  font "Khula-ExtraBold.ttf"
  font "Khula-Light.ttf"
  font "Khula-Regular.ttf"
  font "Khula-SemiBold.ttf"

  # No zap stanza required
end
