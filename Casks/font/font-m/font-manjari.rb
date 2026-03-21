cask "font-manjari" do
  version "2.000"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/manjari"
  name "Manjari"
  homepage "https://fonts.google.com/specimen/Manjari"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Manjari",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Manjari-Bold.ttf"
  font "Manjari-Regular.ttf"
  font "Manjari-Thin.ttf"

  # No zap stanza required
end
