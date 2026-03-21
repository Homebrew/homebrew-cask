cask "font-sono" do
  version "2.112"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/sono/Sono%5BMONO%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Sono"
  homepage "https://fonts.google.com/specimen/Sono"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Sono",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Sono[MONO,wght].ttf"

  # No zap stanza required
end
