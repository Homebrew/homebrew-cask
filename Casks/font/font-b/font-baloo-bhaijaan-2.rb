cask "font-baloo-bhaijaan-2" do
  version "1.701"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/baloobhaijaan2/BalooBhaijaan2%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Baloo Bhaijaan 2"
  homepage "https://fonts.google.com/specimen/Baloo+Bhaijaan+2"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Baloo Bhaijaan 2",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "BalooBhaijaan2[wght].ttf"

  # No zap stanza required
end
