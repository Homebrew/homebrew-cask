cask "font-kameron" do
  version "1.100"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/kameron/Kameron%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Kameron"
  homepage "https://fonts.google.com/specimen/Kameron"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Kameron",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Kameron[wght].ttf"

  # No zap stanza required
end
