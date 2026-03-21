cask "font-grape-nuts" do
  version "1.010"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/grapenuts/GrapeNuts-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Grape Nuts"
  homepage "https://fonts.google.com/specimen/Grape+Nuts"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Grape Nuts",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "GrapeNuts-Regular.ttf"

  # No zap stanza required
end
