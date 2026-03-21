cask "font-armata" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/armata/Armata-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Armata"
  homepage "https://fonts.google.com/specimen/Armata"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Armata",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Armata-Regular.ttf"

  # No zap stanza required
end
