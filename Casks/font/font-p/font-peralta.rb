cask "font-peralta" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/peralta/Peralta-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Peralta"
  homepage "https://fonts.google.com/specimen/Peralta"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Peralta",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Peralta-Regular.ttf"

  # No zap stanza required
end
