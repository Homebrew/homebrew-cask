cask "font-buenard" do
  version "2.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/buenard/Buenard%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Buenard"
  homepage "https://fonts.google.com/specimen/Buenard"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Buenard",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Buenard[wght].ttf"

  # No zap stanza required
end
