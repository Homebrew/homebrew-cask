cask "font-open-sans-hebrew" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "apache/opensanshebrew"
  name "Open Sans Hebrew"
  homepage "https://fonts.google.com/earlyaccess"

  font "OpenSansHebrew-Bold.ttf"
  font "OpenSansHebrew-BoldItalic.ttf"
  font "OpenSansHebrew-ExtraBold.ttf"
  font "OpenSansHebrew-ExtraBoldItalic.ttf"
  font "OpenSansHebrew-Italic.ttf"
  font "OpenSansHebrew-Light.ttf"
  font "OpenSansHebrew-LightItalic.ttf"
  font "OpenSansHebrew-Regular.ttf"

  # No zap stanza required
end
