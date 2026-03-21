cask "font-candal" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/candal/Candal.ttf",
      verified: "github.com/google/fonts/"
  name "Candal"
  homepage "https://fonts.google.com/specimen/Candal"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Candal",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Candal.ttf"

  # No zap stanza required
end
