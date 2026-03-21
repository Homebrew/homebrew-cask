cask "font-baloo-chettan-2" do
  version "1.700"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/baloochettan2/BalooChettan2%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Baloo Chettan 2"
  homepage "https://fonts.google.com/specimen/Baloo+Chettan+2"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Baloo Chettan 2",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "BalooChettan2[wght].ttf"

  # No zap stanza required
end
