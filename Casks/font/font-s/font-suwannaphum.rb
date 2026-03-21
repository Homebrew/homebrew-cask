cask "font-suwannaphum" do
  version "8.002"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/suwannaphum"
  name "Suwannaphum"
  homepage "https://fonts.google.com/specimen/Suwannaphum"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Suwannaphum",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Suwannaphum-Black.ttf"
  font "Suwannaphum-Bold.ttf"
  font "Suwannaphum-Light.ttf"
  font "Suwannaphum-Regular.ttf"
  font "Suwannaphum-Thin.ttf"

  # No zap stanza required
end
