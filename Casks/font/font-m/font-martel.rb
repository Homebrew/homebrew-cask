cask "font-martel" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/martel"
  name "Martel"
  homepage "https://fonts.google.com/specimen/Martel"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Martel",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Martel-Bold.ttf"
  font "Martel-DemiBold.ttf"
  font "Martel-ExtraBold.ttf"
  font "Martel-Heavy.ttf"
  font "Martel-Light.ttf"
  font "Martel-Regular.ttf"
  font "Martel-UltraLight.ttf"

  # No zap stanza required
end
