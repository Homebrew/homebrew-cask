cask "font-comforter" do
  version "1.013"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/comforter/Comforter-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Comforter"
  homepage "https://fonts.google.com/specimen/Comforter"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Comforter",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Comforter-Regular.ttf"

  # No zap stanza required
end
