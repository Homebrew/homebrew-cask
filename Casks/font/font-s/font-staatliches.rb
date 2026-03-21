cask "font-staatliches" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/staatliches/Staatliches-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Staatliches"
  homepage "https://fonts.google.com/specimen/Staatliches"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Staatliches",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Staatliches-Regular.ttf"

  # No zap stanza required
end
