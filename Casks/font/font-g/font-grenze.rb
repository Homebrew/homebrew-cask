cask "font-grenze" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/grenze"
  name "Grenze"
  homepage "https://fonts.google.com/specimen/Grenze"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Grenze",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Grenze-Black.ttf"
  font "Grenze-BlackItalic.ttf"
  font "Grenze-Bold.ttf"
  font "Grenze-BoldItalic.ttf"
  font "Grenze-ExtraBold.ttf"
  font "Grenze-ExtraBoldItalic.ttf"
  font "Grenze-ExtraLight.ttf"
  font "Grenze-ExtraLightItalic.ttf"
  font "Grenze-Italic.ttf"
  font "Grenze-Light.ttf"
  font "Grenze-LightItalic.ttf"
  font "Grenze-Medium.ttf"
  font "Grenze-MediumItalic.ttf"
  font "Grenze-Regular.ttf"
  font "Grenze-SemiBold.ttf"
  font "Grenze-SemiBoldItalic.ttf"
  font "Grenze-Thin.ttf"
  font "Grenze-ThinItalic.ttf"

  # No zap stanza required
end
