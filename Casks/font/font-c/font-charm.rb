cask "font-charm" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/charm"
  name "Charm"
  homepage "https://fonts.google.com/specimen/Charm"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Charm",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Charm-Bold.ttf"
  font "Charm-Regular.ttf"

  # No zap stanza required
end
