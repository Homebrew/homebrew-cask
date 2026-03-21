cask "font-antic-didone" do
  version "2.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/anticdidone/AnticDidone-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Antic Didone"
  homepage "https://fonts.google.com/specimen/Antic+Didone"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Antic Didone",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "AnticDidone-Regular.ttf"

  # No zap stanza required
end
