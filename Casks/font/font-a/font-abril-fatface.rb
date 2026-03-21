cask "font-abril-fatface" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/abrilfatface/AbrilFatface-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Abril Fatface"
  homepage "https://fonts.google.com/specimen/Abril+Fatface"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Abril Fatface",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "AbrilFatface-Regular.ttf"

  # No zap stanza required
end
