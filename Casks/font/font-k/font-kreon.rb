cask "font-kreon" do
  version "2.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/kreon/Kreon%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Kreon"
  homepage "https://fonts.google.com/specimen/Kreon"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Kreon",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Kreon[wght].ttf"

  # No zap stanza required
end
