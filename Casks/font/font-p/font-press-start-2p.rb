cask "font-press-start-2p" do
  version "3.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/pressstart2p/PressStart2P-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Press Start 2P"
  homepage "https://fonts.google.com/specimen/Press+Start+2P"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Press Start 2P",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PressStart2P-Regular.ttf"

  # No zap stanza required
end
