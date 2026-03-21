cask "font-sunflower" do
  version "1.00"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/sunflower"
  name "Sunflower"
  homepage "https://fonts.google.com/specimen/Sunflower"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Sunflower",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Sunflower-Bold.ttf"
  font "Sunflower-Light.ttf"
  font "Sunflower-Medium.ttf"

  # No zap stanza required
end
