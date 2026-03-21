cask "font-barrio" do
  version "1.005"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/barrio/Barrio-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Barrio"
  homepage "https://fonts.google.com/specimen/Barrio"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Barrio",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Barrio-Regular.ttf"

  # No zap stanza required
end
