cask "font-changa" do
  version "3.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/changa/Changa%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Changa"
  homepage "https://fonts.google.com/specimen/Changa"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Changa",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Changa[wght].ttf"

  # No zap stanza required
end
