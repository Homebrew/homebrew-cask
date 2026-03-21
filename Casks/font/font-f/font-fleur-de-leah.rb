cask "font-fleur-de-leah" do
  version "1.010"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/fleurdeleah/FleurDeLeah-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Fleur De Leah"
  homepage "https://fonts.google.com/specimen/Fleur+De+Leah"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Fleur De Leah",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "FleurDeLeah-Regular.ttf"

  # No zap stanza required
end
