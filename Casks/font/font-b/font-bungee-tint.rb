cask "font-bungee-tint" do
  version "2.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bungeetint/BungeeTint-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Bungee Tint"
  homepage "https://fonts.google.com/specimen/Bungee+Tint"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Bungee Tint",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "BungeeTint-Regular.ttf"

  # No zap stanza required
end
