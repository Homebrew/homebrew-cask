cask "font-anuphan" do
  version "3.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/anuphan/Anuphan%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Anuphan"
  homepage "https://fonts.google.com/specimen/Anuphan"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Anuphan",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Anuphan[wght].ttf"

  # No zap stanza required
end
