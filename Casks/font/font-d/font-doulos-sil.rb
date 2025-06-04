cask "font-doulos-sil" do
  version "7.000"
  sha256 "3d63296575f1f834f785f4a9426a9da6bc3b9083fcc304a5490704f4398bf639"

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
