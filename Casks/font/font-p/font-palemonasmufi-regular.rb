cask "font-palemonasmufi-regular" do
  version "2.000"
  sha256 :no_check

  url "https://mufi.info/q.php?o=mufifontfiledownload&name=PalemMUFI-reg.ttf"
  name "PalemonasMUFI Regular"
  homepage "https://mufi.info/q.php?p=mufi/fonts/fontfamily/6"

  livecheck do
    url "https://mufi.info/q.php?p=mufi/fonts"
    regex(/PalemonasMUFI\s+v?(\d+(?:\.\d+)+)/i)
  end

  font "PalemMUFI-reg.ttf"

  # No zap stanza required
end
