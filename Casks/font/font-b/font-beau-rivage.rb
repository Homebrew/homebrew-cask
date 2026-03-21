cask "font-beau-rivage" do
  version "1.010"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/beaurivage/BeauRivage-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Beau Rivage"
  homepage "https://fonts.google.com/specimen/Beau+Rivage"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Beau Rivage",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "BeauRivage-Regular.ttf"

  # No zap stanza required
end
