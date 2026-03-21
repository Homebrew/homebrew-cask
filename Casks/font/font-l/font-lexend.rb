cask "font-lexend" do
  version "1.007"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/lexend/Lexend%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Lexend"
  homepage "https://fonts.google.com/specimen/Lexend"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Lexend",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Lexend[wght].ttf"

  # No zap stanza required
end
