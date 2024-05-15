cask "font-ibm-plex-sans-devanagari" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/ibmplexsansdevanagari"
  name "IBM Plex Sans Devanagari"
  homepage "https://fonts.google.com/specimen/IBM+Plex+Sans+Devanagari"

  font "IBMPlexSansDevanagari-Bold.ttf"
  font "IBMPlexSansDevanagari-ExtraLight.ttf"
  font "IBMPlexSansDevanagari-Light.ttf"
  font "IBMPlexSansDevanagari-Medium.ttf"
  font "IBMPlexSansDevanagari-Regular.ttf"
  font "IBMPlexSansDevanagari-SemiBold.ttf"
  font "IBMPlexSansDevanagari-Thin.ttf"

  # No zap stanza required
end
