cask "font-glegoo" do
  version "2.0.1"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/glegoo"
  name "Glegoo"
  homepage "https://fonts.google.com/specimen/Glegoo"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Glegoo",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Glegoo-Bold.ttf"
  font "Glegoo-Regular.ttf"

  # No zap stanza required
end
