cask "font-podkova" do
  version "2.103"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/podkova/Podkova%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Podkova"
  homepage "https://fonts.google.com/specimen/Podkova"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Podkova",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Podkova[wght].ttf"

  # No zap stanza required
end
