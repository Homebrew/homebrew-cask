cask "font-phudu" do
  version "1.005"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/phudu/Phudu%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Phudu"
  homepage "https://fonts.google.com/specimen/Phudu"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Phudu",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Phudu[wght].ttf"

  # No zap stanza required
end
