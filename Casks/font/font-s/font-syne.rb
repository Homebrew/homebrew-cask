cask "font-syne" do
  version "2.200"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/syne/Syne%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Syne"
  homepage "https://fonts.google.com/specimen/Syne"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Syne",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Syne[wght].ttf"

  # No zap stanza required
end
