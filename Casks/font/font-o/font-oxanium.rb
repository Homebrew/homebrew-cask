cask "font-oxanium" do
  version "2.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/oxanium/Oxanium%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Oxanium"
  homepage "https://fonts.google.com/specimen/Oxanium"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Oxanium",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Oxanium[wght].ttf"

  # No zap stanza required
end
