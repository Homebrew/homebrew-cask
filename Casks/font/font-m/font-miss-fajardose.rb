cask "font-miss-fajardose" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/missfajardose/MissFajardose-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Miss Fajardose"
  homepage "https://fonts.google.com/specimen/Miss+Fajardose"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Miss Fajardose",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "MissFajardose-Regular.ttf"

  # No zap stanza required
end
