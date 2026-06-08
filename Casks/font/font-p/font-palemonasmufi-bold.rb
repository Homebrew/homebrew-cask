cask "font-palemonasmufi-bold" do
  version "2.000"
  sha256 :no_check

  url "https://mufi.info/q.php?o=mufifontfiledownload&name=PalemMUFI-bd.ttf"
  name "PalemonasMUFI Italic"
  homepage "https://mufi.info/q.php?p=mufi/fonts/fontfamily/6"

  livecheck do
    url "https://mufi.info/q.php?p=mufi/fonts"
    regex(/PalemonasMUFI-Bold\s+v?(\d+(?:\.\d+)+)/i)
  end

  font "PalemMUFI-bd.ttf"

  # No zap stanza required
end
