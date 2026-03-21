cask "font-ranga" do
  version "1.0.2"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/ranga"
  name "Ranga"
  homepage "https://fonts.google.com/specimen/Ranga"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Ranga",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Ranga-Bold.ttf"
  font "Ranga-Regular.ttf"

  # No zap stanza required
end
