cask "font-palemonasmufi-regular" do
  version "2.0"
  sha256 :no_check

  url "https://mufi.info/q.php?o=mufifontfiledownload&name=PalemMUFI-reg.ttf"
  name "PalemonasMUFI Regular"
  desc "Unicode font with all glyphs from MUFI v3.0"
  homepage "https://mufi.info/q.php?p=mufi/fonts/fontfamily/6"

  font "PalemMUFI-reg.ttf"

  # No zap stanza required
end
