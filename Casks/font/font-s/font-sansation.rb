cask "font-sansation" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/sansation"
  name "Sansation"
  homepage "https://www.fontspace.com/sansation-font-f20328"

  font "Sansation-Bold.ttf"
  font "Sansation-BoldItalic.ttf"
  font "Sansation-Italic.ttf"
  font "Sansation-Light.ttf"
  font "Sansation-LightItalic.ttf"
  font "Sansation-Regular.ttf"

  # No zap stanza required
end
