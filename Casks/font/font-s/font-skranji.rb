cask "font-skranji" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/skranji"
  name "Skranji"
  homepage "https://fonts.google.com/specimen/Skranji"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Skranji",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Skranji-Bold.ttf"
  font "Skranji-Regular.ttf"

  # No zap stanza required
end
