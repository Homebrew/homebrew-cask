cask "font-nova-square" do
  version "2.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/novasquare/NovaSquare.ttf",
      verified: "github.com/google/fonts/"
  name "Nova Square"
  homepage "https://fonts.google.com/specimen/Nova+Square"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Nova Square",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NovaSquare.ttf"

  # No zap stanza required
end
