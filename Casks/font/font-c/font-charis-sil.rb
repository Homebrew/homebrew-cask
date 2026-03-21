cask "font-charis-sil" do
  version "6.101"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/charissil"
  name "Charis SIL"
  homepage "https://fonts.google.com/specimen/Charis+SIL"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Charis SIL",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "CharisSIL-Bold.ttf"
  font "CharisSIL-BoldItalic.ttf"
  font "CharisSIL-Italic.ttf"
  font "CharisSIL-Regular.ttf"

  # No zap stanza required
end
