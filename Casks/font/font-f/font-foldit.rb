cask "font-foldit" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/foldit/Foldit%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Foldit"
  homepage "https://fonts.google.com/specimen/Foldit"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Foldit",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Foldit[wght].ttf"

  # No zap stanza required
end
