cask "font-betania-patmos" do
  version "11.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/betaniapatmos/BetaniaPatmos-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Betania Patmos"
  homepage "https://fonts.google.com/specimen/Betania+Patmos"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Betania Patmos",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "BetaniaPatmos-Regular.ttf"

  # No zap stanza required
end
