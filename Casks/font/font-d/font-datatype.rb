cask "font-datatype" do
  version "1.202"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/datatype/Datatype%5Bwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Datatype"
  homepage "https://fonts.google.com/specimen/Datatype"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Datatype",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Datatype[wdth,wght].ttf"

  # No zap stanza required
end
