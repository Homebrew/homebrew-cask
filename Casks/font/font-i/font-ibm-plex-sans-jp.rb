cask "font-ibm-plex-sans-jp" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/ibmplexsansjp"
  name "IBM Plex Sans JP"
  homepage "https://fonts.google.com/specimen/IBM+Plex+Sans+JP"

  font "IBMPlexSansJP-Bold.ttf"
  font "IBMPlexSansJP-ExtraLight.ttf"
  font "IBMPlexSansJP-Light.ttf"
  font "IBMPlexSansJP-Medium.ttf"
  font "IBMPlexSansJP-Regular.ttf"
  font "IBMPlexSansJP-SemiBold.ttf"
  font "IBMPlexSansJP-Thin.ttf"

  # No zap stanza required
end
