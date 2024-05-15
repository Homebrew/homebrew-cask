cask "font-ibm-plex-sans-thai" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/ibmplexsansthai"
  name "IBM Plex Sans Thai"
  homepage "https://fonts.google.com/specimen/IBM+Plex+Sans+Thai"

  font "IBMPlexSansThai-Bold.ttf"
  font "IBMPlexSansThai-ExtraLight.ttf"
  font "IBMPlexSansThai-Light.ttf"
  font "IBMPlexSansThai-Medium.ttf"
  font "IBMPlexSansThai-Regular.ttf"
  font "IBMPlexSansThai-SemiBold.ttf"
  font "IBMPlexSansThai-Thin.ttf"

  # No zap stanza required
end
