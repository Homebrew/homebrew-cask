cask "font-dangrek" do
  version "8.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/dangrek/Dangrek-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Dangrek"
  homepage "https://fonts.google.com/specimen/Dangrek"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Dangrek",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Dangrek-Regular.ttf"

  # No zap stanza required
end
