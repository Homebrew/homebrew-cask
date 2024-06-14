cask "font-palemonasmufi-bolditalic" do
  version "2.0"
  sha256 :no_check

  url "https://mufi.info/q.php?o=mufifontfiledownload&name=PalemMUFI-bi.ttf"
  name "PalemonasMUFI Bold italic"
  desc "Unicode font with 1327 glyphs from MUFI v3.0"
  homepage "https://mufi.info/q.php?p=mufi/fonts/fontfamily/6"

  font "PalemMUFI-bi.ttf"

  # No zap stanza required
end
