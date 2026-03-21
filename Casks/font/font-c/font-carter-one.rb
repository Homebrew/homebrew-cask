cask "font-carter-one" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/carterone/CarterOne.ttf",
      verified: "github.com/google/fonts/"
  name "Carter One"
  homepage "https://fonts.google.com/specimen/Carter+One"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Carter One",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "CarterOne.ttf"

  # No zap stanza required
end
