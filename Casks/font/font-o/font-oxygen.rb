cask "font-oxygen" do
  version "0.2.3"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/oxygen"
  name "Oxygen"
  homepage "https://fonts.google.com/specimen/Oxygen"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Oxygen",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Oxygen-Bold.ttf"
  font "Oxygen-Light.ttf"
  font "Oxygen-Regular.ttf"

  # No zap stanza required
end
