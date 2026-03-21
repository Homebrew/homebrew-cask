cask "font-tienne" do
  version "001.001"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/tienne"
  name "Tienne"
  homepage "https://fonts.google.com/specimen/Tienne"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Tienne",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Tienne-Black.ttf"
  font "Tienne-Bold.ttf"
  font "Tienne-Regular.ttf"

  # No zap stanza required
end
