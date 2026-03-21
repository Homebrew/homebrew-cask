cask "font-viga" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/viga/Viga-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Viga"
  homepage "https://fonts.google.com/specimen/Viga"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Viga",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Viga-Regular.ttf"

  # No zap stanza required
end
