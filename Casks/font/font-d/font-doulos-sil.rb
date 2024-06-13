cask "font-doulos-sil" do
  version "6.200"
  sha256 "a7ad76326c126b2748297b987a634a56f7e42cd45bc3ff2c90a7909cbb164223"

  url "https://software.sil.org/downloads/r/doulos/DoulosSIL-#{version}.zip"
  name "Doulos SIL"
  homepage "https://software.sil.org/doulos/"

  livecheck do
    url "https://software.sil.org/doulos/download/"
    regex(/href=.*DoulosSIL[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  font "DoulosSIL-#{version}/DoulosSIL-Regular.ttf"

  # No zap stanza required
end
