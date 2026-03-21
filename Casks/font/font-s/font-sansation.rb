cask "font-sansation" do
  version "1.301"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/sansation"
  name "Sansation"
  homepage "https://fonts.google.com/specimen/Sansation"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Sansation",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Sansation-Bold.ttf"
  font "Sansation-BoldItalic.ttf"
  font "Sansation-Italic.ttf"
  font "Sansation-Light.ttf"
  font "Sansation-LightItalic.ttf"
  font "Sansation-Regular.ttf"

  # No zap stanza required
end
