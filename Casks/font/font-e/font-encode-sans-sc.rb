cask "font-encode-sans-sc" do
  version "3.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/encodesanssc/EncodeSansSC%5Bwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Encode Sans SC"
  homepage "https://fonts.google.com/specimen/Encode+Sans+SC"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Encode Sans SC",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "EncodeSansSC[wdth,wght].ttf"

  # No zap stanza required
end
