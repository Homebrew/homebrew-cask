cask "font-hahmlet" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/hahmlet/Hahmlet%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Hahmlet"
  homepage "https://fonts.google.com/specimen/Hahmlet"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Hahmlet",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Hahmlet[wght].ttf"

  # No zap stanza required
end
