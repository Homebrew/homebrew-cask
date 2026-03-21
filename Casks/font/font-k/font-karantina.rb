cask "font-karantina" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/karantina"
  name "Karantina"
  homepage "https://fonts.google.com/specimen/Karantina"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Karantina",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Karantina-Bold.ttf"
  font "Karantina-Light.ttf"
  font "Karantina-Regular.ttf"

  # No zap stanza required
end
