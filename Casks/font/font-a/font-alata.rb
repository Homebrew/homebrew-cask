cask "font-alata" do
  version "1.005"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/alata/Alata-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Alata"
  homepage "https://fonts.google.com/specimen/Alata"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Alata",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Alata-Regular.ttf"

  # No zap stanza required
end
