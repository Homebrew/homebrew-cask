cask "font-trirong" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/trirong"
  name "Trirong"
  homepage "https://fonts.google.com/specimen/Trirong"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Trirong",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Trirong-Black.ttf"
  font "Trirong-BlackItalic.ttf"
  font "Trirong-Bold.ttf"
  font "Trirong-BoldItalic.ttf"
  font "Trirong-ExtraBold.ttf"
  font "Trirong-ExtraBoldItalic.ttf"
  font "Trirong-ExtraLight.ttf"
  font "Trirong-ExtraLightItalic.ttf"
  font "Trirong-Italic.ttf"
  font "Trirong-Light.ttf"
  font "Trirong-LightItalic.ttf"
  font "Trirong-Medium.ttf"
  font "Trirong-MediumItalic.ttf"
  font "Trirong-Regular.ttf"
  font "Trirong-SemiBold.ttf"
  font "Trirong-SemiBoldItalic.ttf"
  font "Trirong-Thin.ttf"
  font "Trirong-ThinItalic.ttf"

  # No zap stanza required
end
