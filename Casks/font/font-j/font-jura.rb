cask "font-jura" do
  version "5.106"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/jura/Jura%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Jura"
  homepage "https://fonts.google.com/specimen/Jura"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Jura",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Jura[wght].ttf"

  # No zap stanza required
end
