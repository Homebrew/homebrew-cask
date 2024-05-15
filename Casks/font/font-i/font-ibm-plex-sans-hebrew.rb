cask "font-ibm-plex-sans-hebrew" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/ibmplexsanshebrew"
  name "IBM Plex Sans Hebrew"
  homepage "https://fonts.google.com/specimen/IBM+Plex+Sans+Hebrew"

  font "IBMPlexSansHebrew-Bold.ttf"
  font "IBMPlexSansHebrew-ExtraLight.ttf"
  font "IBMPlexSansHebrew-Light.ttf"
  font "IBMPlexSansHebrew-Medium.ttf"
  font "IBMPlexSansHebrew-Regular.ttf"
  font "IBMPlexSansHebrew-SemiBold.ttf"
  font "IBMPlexSansHebrew-Thin.ttf"

  # No zap stanza required
end
