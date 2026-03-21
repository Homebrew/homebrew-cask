cask "font-marhey" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/marhey/Marhey%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Marhey"
  homepage "https://fonts.google.com/specimen/Marhey"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Marhey",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Marhey[wght].ttf"

  # No zap stanza required
end
