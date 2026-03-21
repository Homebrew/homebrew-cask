cask "font-danfo" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/danfo/Danfo%5BELSH%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Danfo"
  homepage "https://fonts.google.com/specimen/Danfo"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Danfo",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Danfo[ELSH].ttf"

  # No zap stanza required
end
