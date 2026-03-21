cask "font-kanit" do
  version "2.000"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/kanit"
  name "Kanit"
  homepage "https://fonts.google.com/specimen/Kanit"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Kanit",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Kanit-Black.ttf"
  font "Kanit-BlackItalic.ttf"
  font "Kanit-Bold.ttf"
  font "Kanit-BoldItalic.ttf"
  font "Kanit-ExtraBold.ttf"
  font "Kanit-ExtraBoldItalic.ttf"
  font "Kanit-ExtraLight.ttf"
  font "Kanit-ExtraLightItalic.ttf"
  font "Kanit-Italic.ttf"
  font "Kanit-Light.ttf"
  font "Kanit-LightItalic.ttf"
  font "Kanit-Medium.ttf"
  font "Kanit-MediumItalic.ttf"
  font "Kanit-Regular.ttf"
  font "Kanit-SemiBold.ttf"
  font "Kanit-SemiBoldItalic.ttf"
  font "Kanit-Thin.ttf"
  font "Kanit-ThinItalic.ttf"

  # No zap stanza required
end
