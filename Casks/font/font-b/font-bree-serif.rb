cask "font-bree-serif" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/breeserif/BreeSerif-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Bree Serif"
  homepage "https://fonts.google.com/specimen/Bree+Serif"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Bree Serif",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "BreeSerif-Regular.ttf"

  # No zap stanza required
end
