cask "font-bungee-hairline" do
  version "2.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bungeehairline/BungeeHairline-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Bungee Hairline"
  homepage "https://fonts.google.com/specimen/Bungee+Hairline"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Bungee Hairline",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "BungeeHairline-Regular.ttf"

  # No zap stanza required
end
