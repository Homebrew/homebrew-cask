cask "font-inconsolata" do
  version "3.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/inconsolata/Inconsolata%5Bwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Inconsolata"
  homepage "https://fonts.google.com/specimen/Inconsolata"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Inconsolata",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Inconsolata[wdth,wght].ttf"

  # No zap stanza required
end
