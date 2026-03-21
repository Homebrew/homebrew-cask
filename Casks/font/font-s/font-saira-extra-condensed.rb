cask "font-saira-extra-condensed" do
  version "0.072"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/sairaextracondensed"
  name "Saira Extra Condensed"
  homepage "https://fonts.google.com/specimen/Saira+Extra+Condensed"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Saira Extra Condensed",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "SairaExtraCondensed-Black.ttf"
  font "SairaExtraCondensed-Bold.ttf"
  font "SairaExtraCondensed-ExtraBold.ttf"
  font "SairaExtraCondensed-ExtraLight.ttf"
  font "SairaExtraCondensed-Light.ttf"
  font "SairaExtraCondensed-Medium.ttf"
  font "SairaExtraCondensed-Regular.ttf"
  font "SairaExtraCondensed-SemiBold.ttf"
  font "SairaExtraCondensed-Thin.ttf"

  # No zap stanza required
end
