cask "font-amarante" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/amarante/Amarante-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Amarante"
  homepage "https://fonts.google.com/specimen/Amarante"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Amarante",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Amarante-Regular.ttf"

  # No zap stanza required
end
