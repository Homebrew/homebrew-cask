cask "font-bricolage-grotesque" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bricolagegrotesque/BricolageGrotesque%5Bopsz%2Cwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Bricolage Grotesque"
  homepage "https://fonts.google.com/specimen/Bricolage+Grotesque"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Bricolage Grotesque",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "BricolageGrotesque[opsz,wdth,wght].ttf"

  # No zap stanza required
end
