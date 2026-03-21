cask "font-encode-sans-expanded" do
  version "2.000"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/encodesansexpanded"
  name "Encode Sans Expanded"
  homepage "https://fonts.google.com/specimen/Encode+Sans+Expanded"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Encode Sans Expanded",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "EncodeSansExpanded-Black.ttf"
  font "EncodeSansExpanded-Bold.ttf"
  font "EncodeSansExpanded-ExtraBold.ttf"
  font "EncodeSansExpanded-ExtraLight.ttf"
  font "EncodeSansExpanded-Light.ttf"
  font "EncodeSansExpanded-Medium.ttf"
  font "EncodeSansExpanded-Regular.ttf"
  font "EncodeSansExpanded-SemiBold.ttf"
  font "EncodeSansExpanded-Thin.ttf"

  # No zap stanza required
end
