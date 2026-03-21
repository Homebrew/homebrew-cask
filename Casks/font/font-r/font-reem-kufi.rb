cask "font-reem-kufi" do
  version "2.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/reemkufi/ReemKufi%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Reem Kufi"
  homepage "https://fonts.google.com/specimen/Reem+Kufi"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Reem Kufi",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "ReemKufi[wght].ttf"

  # No zap stanza required
end
