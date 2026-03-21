cask "font-akshar" do
  version "1.100"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/akshar/Akshar%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Akshar"
  homepage "https://fonts.google.com/specimen/Akshar"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Akshar",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Akshar[wght].ttf"

  # No zap stanza required
end
