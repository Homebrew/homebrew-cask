cask "font-shojumaru" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/shojumaru/Shojumaru-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Shojumaru"
  homepage "https://fonts.google.com/specimen/Shojumaru"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Shojumaru",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Shojumaru-Regular.ttf"

  # No zap stanza required
end
