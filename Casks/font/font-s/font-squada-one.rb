cask "font-squada-one" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/squadaone/SquadaOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Squada One"
  homepage "https://fonts.google.com/specimen/Squada+One"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Squada One",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "SquadaOne-Regular.ttf"

  # No zap stanza required
end
