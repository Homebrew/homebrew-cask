cask "font-bungee-shade" do
  version "2.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bungeeshade/BungeeShade-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Bungee Shade"
  homepage "https://fonts.google.com/specimen/Bungee+Shade"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Bungee Shade",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "BungeeShade-Regular.ttf"

  # No zap stanza required
end
