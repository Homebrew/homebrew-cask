cask "font-dai-banna-sil" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/daibannasil"
  name "Dai Banna SIL"
  homepage "https://fonts.google.com/specimen/Dai+Banna+SIL"

  font "DaiBannaSIL-Bold.ttf"
  font "DaiBannaSIL-BoldItalic.ttf"
  font "DaiBannaSIL-Italic.ttf"
  font "DaiBannaSIL-Light.ttf"
  font "DaiBannaSIL-LightItalic.ttf"
  font "DaiBannaSIL-Medium.ttf"
  font "DaiBannaSIL-MediumItalic.ttf"
  font "DaiBannaSIL-Regular.ttf"
  font "DaiBannaSIL-SemiBold.ttf"
  font "DaiBannaSIL-SemiBoldItalic.ttf"

  # No zap stanza required
end
