cask "font-cairo" do
  version "3.130"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/cairo/Cairo%5Bslnt%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Cairo"
  homepage "https://fonts.google.com/specimen/Cairo"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Cairo",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Cairo[slnt,wght].ttf"

  # No zap stanza required
end
