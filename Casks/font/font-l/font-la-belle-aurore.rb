cask "font-la-belle-aurore" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/labelleaurore/LaBelleAurore.ttf",
      verified: "github.com/google/fonts/"
  name "La Belle Aurore"
  homepage "https://fonts.google.com/specimen/La+Belle+Aurore"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "La Belle Aurore",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "LaBelleAurore.ttf"

  # No zap stanza required
end
