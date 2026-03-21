cask "font-capriola" do
  version "1.007"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/capriola/Capriola%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Capriola"
  homepage "https://fonts.google.com/specimen/Capriola"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Capriola",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Capriola[wght].ttf"

  # No zap stanza required
end
