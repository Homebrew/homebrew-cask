cask "font-oswald" do
  version "4.103"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/oswald/Oswald%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Oswald"
  homepage "https://fonts.google.com/specimen/Oswald"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Oswald",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Oswald[wght].ttf"

  # No zap stanza required
end
