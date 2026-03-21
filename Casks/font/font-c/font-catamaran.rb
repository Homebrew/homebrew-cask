cask "font-catamaran" do
  version "2.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/catamaran/Catamaran%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Catamaran"
  homepage "https://fonts.google.com/specimen/Catamaran"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Catamaran",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Catamaran[wght].ttf"

  # No zap stanza required
end
