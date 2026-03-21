cask "font-almarai" do
  version "1.10"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/almarai"
  name "Almarai"
  homepage "https://fonts.google.com/specimen/Almarai"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Almarai",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Almarai-Bold.ttf"
  font "Almarai-ExtraBold.ttf"
  font "Almarai-Light.ttf"
  font "Almarai-Regular.ttf"

  # No zap stanza required
end
