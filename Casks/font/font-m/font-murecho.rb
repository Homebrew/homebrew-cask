cask "font-murecho" do
  version "1.010"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/murecho/Murecho%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Murecho"
  homepage "https://fonts.google.com/specimen/Murecho"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Murecho",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Murecho[wght].ttf"

  # No zap stanza required
end
