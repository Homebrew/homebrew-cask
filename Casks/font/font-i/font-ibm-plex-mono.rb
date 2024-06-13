cask "font-ibm-plex-mono" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/ibmplexmono"
  name "IBM Plex Mono"
  homepage "https://fonts.google.com/specimen/IBM+Plex+Mono"

  font "IBMPlexMono-Bold.ttf"
  font "IBMPlexMono-BoldItalic.ttf"
  font "IBMPlexMono-ExtraLight.ttf"
  font "IBMPlexMono-ExtraLightItalic.ttf"
  font "IBMPlexMono-Italic.ttf"
  font "IBMPlexMono-Light.ttf"
  font "IBMPlexMono-LightItalic.ttf"
  font "IBMPlexMono-Medium.ttf"
  font "IBMPlexMono-MediumItalic.ttf"
  font "IBMPlexMono-Regular.ttf"
  font "IBMPlexMono-SemiBold.ttf"
  font "IBMPlexMono-SemiBoldItalic.ttf"
  font "IBMPlexMono-Thin.ttf"
  font "IBMPlexMono-ThinItalic.ttf"

  # No zap stanza required
end
