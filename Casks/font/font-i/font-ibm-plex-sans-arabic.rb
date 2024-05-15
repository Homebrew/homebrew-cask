cask "font-ibm-plex-sans-arabic" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/ibmplexsansarabic"
  name "IBM Plex Sans Arabic"
  homepage "https://fonts.google.com/specimen/IBM+Plex+Sans+Arabic"

  font "IBMPlexSansArabic-Bold.ttf"
  font "IBMPlexSansArabic-ExtraLight.ttf"
  font "IBMPlexSansArabic-Light.ttf"
  font "IBMPlexSansArabic-Medium.ttf"
  font "IBMPlexSansArabic-Regular.ttf"
  font "IBMPlexSansArabic-SemiBold.ttf"
  font "IBMPlexSansArabic-Thin.ttf"

  # No zap stanza required
end
