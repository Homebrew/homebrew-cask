cask "font-bungee-spice" do
  version "2.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bungeespice/BungeeSpice-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Bungee Spice"
  homepage "https://fonts.google.com/specimen/Bungee+Spice"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Bungee Spice",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "BungeeSpice-Regular.ttf"

  # No zap stanza required
end
