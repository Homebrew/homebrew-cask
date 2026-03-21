cask "font-stalemate" do
  version "001.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/stalemate/Stalemate-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Stalemate"
  homepage "https://fonts.google.com/specimen/Stalemate"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Stalemate",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Stalemate-Regular.ttf"

  # No zap stanza required
end
