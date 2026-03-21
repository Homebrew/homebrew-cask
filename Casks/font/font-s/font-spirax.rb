cask "font-spirax" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/spirax/Spirax-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Spirax"
  homepage "https://fonts.google.com/specimen/Spirax"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Spirax",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Spirax-Regular.ttf"

  # No zap stanza required
end
