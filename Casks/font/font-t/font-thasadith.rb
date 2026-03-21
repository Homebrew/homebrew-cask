cask "font-thasadith" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/thasadith"
  name "Thasadith"
  homepage "https://fonts.google.com/specimen/Thasadith"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Thasadith",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Thasadith-Bold.ttf"
  font "Thasadith-BoldItalic.ttf"
  font "Thasadith-Italic.ttf"
  font "Thasadith-Regular.ttf"

  # No zap stanza required
end
