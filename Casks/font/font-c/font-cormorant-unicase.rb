cask "font-cormorant-unicase" do
  version "4.000"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/cormorantunicase"
  name "Cormorant Unicase"
  homepage "https://fonts.google.com/specimen/Cormorant+Unicase"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Cormorant Unicase",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "CormorantUnicase-Bold.ttf"
  font "CormorantUnicase-Light.ttf"
  font "CormorantUnicase-Medium.ttf"
  font "CormorantUnicase-Regular.ttf"
  font "CormorantUnicase-SemiBold.ttf"

  # No zap stanza required
end
