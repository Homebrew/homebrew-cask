cask "font-mea-culpa" do
  version "1.010"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/meaculpa/MeaCulpa-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Mea Culpa"
  homepage "https://fonts.google.com/specimen/Mea+Culpa"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Mea Culpa",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "MeaCulpa-Regular.ttf"

  # No zap stanza required
end
