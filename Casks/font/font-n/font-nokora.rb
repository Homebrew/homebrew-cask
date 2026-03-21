cask "font-nokora" do
  version "9.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/nokora/Nokora%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Nokora"
  homepage "https://fonts.google.com/specimen/Nokora"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Nokora",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Nokora[wght].ttf"

  # No zap stanza required
end
