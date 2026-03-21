cask "font-balthazar" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/balthazar/Balthazar-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Balthazar"
  homepage "https://fonts.google.com/specimen/Balthazar"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Balthazar",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Balthazar-Regular.ttf"

  # No zap stanza required
end
