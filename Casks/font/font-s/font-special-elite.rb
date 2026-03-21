cask "font-special-elite" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/apache/specialelite/SpecialElite-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Special Elite"
  homepage "https://fonts.google.com/specimen/Special+Elite"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Special Elite",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "SpecialElite-Regular.ttf"

  # No zap stanza required
end
