cask "font-jacquarda-bastarda-9-charted" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/jacquardabastarda9charted/JacquardaBastarda9Charted-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Jacquarda Bastarda 9 Charted"
  homepage "https://fonts.google.com/specimen/Jacquarda+Bastarda+9+Charted"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Jacquarda Bastarda 9 Charted",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "JacquardaBastarda9Charted-Regular.ttf"

  # No zap stanza required
end
