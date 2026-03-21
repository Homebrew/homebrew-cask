cask "font-galindo" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/galindo/Galindo-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Galindo"
  homepage "https://fonts.google.com/specimen/Galindo"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Galindo",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Galindo-Regular.ttf"

  # No zap stanza required
end
