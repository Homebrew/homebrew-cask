cask "font-yusei-magic" do
  version "1.200"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/yuseimagic/YuseiMagic-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Yusei Magic"
  homepage "https://fonts.google.com/specimen/Yusei+Magic"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Yusei Magic",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "YuseiMagic-Regular.ttf"

  # No zap stanza required
end
