cask "font-cormorant-upright" do
  version "3.302"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/cormorantupright"
  name "Cormorant Upright"
  homepage "https://fonts.google.com/specimen/Cormorant+Upright"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Cormorant Upright",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "CormorantUpright-Bold.ttf"
  font "CormorantUpright-Light.ttf"
  font "CormorantUpright-Medium.ttf"
  font "CormorantUpright-Regular.ttf"
  font "CormorantUpright-SemiBold.ttf"

  # No zap stanza required
end
