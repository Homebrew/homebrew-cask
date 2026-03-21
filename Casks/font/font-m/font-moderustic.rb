cask "font-moderustic" do
  version "2.120"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/moderustic/Moderustic%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Moderustic"
  homepage "https://fonts.google.com/specimen/Moderustic"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Moderustic",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Moderustic[wght].ttf"

  # No zap stanza required
end
