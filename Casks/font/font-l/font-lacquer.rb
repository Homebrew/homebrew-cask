cask "font-lacquer" do
  version "1.100"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/lacquer/Lacquer-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Lacquer"
  homepage "https://fonts.google.com/specimen/Lacquer"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Lacquer",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Lacquer-Regular.ttf"

  # No zap stanza required
end
