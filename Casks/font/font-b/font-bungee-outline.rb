cask "font-bungee-outline" do
  version "2.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bungeeoutline/BungeeOutline-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Bungee Outline"
  homepage "https://fonts.google.com/specimen/Bungee+Outline"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Bungee Outline",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "BungeeOutline-Regular.ttf"

  # No zap stanza required
end
