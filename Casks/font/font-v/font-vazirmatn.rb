cask "font-vazirmatn" do
  version "33.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/vazirmatn/Vazirmatn%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Vazirmatn"
  homepage "https://fonts.google.com/specimen/Vazirmatn"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Vazirmatn",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Vazirmatn[wght].ttf"

  # No zap stanza required
end
