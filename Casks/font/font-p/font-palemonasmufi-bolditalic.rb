cask "font-palemonasmufi-bolditalic" do
  version "2.000"
  sha256 :no_check

  url "https://mufi.info/q.php?o=mufifontfiledownload&name=PalemMUFI-bi.ttf"
  name "PalemonasMUFI Bold italic"
  homepage "https://mufi.info/q.php?p=mufi/fonts/fontfamily/6"

  livecheck do
    url "https://mufi.info/q.php?p=mufi/fonts"
    regex(/PalemonasMUFI-BoldItalic\s+v?(\d+(?:\.\d+)+)/i)
  end

  no_autobump! because: :requires_manual_review

  font "PalemMUFI-bi.ttf"

  # No zap stanza required
end
