cask "font-charis-sil" do
  version "6.200"
  sha256 "4b09aa75760b8aa697b762c34afb995dde0754c8f09256cb912dbfc478c97ade"

  url "https://software.sil.org/downloads/r/charis/CharisSIL-#{version}.zip"
  name "Charis SIL"
  homepage "https://software.sil.org/charis/"

  livecheck do
    url "https://software.sil.org/charis/download/"
    regex(/href=.*CharisSIL[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  font "CharisSIL-#{version}/CharisSIL-Bold.ttf"
  font "CharisSIL-#{version}/CharisSIL-BoldItalic.ttf"
  font "CharisSIL-#{version}/CharisSIL-Italic.ttf"
  font "CharisSIL-#{version}/CharisSIL-Regular.ttf"

  # No zap stanza required
end
