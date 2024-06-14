cask "font-palemonasmufi-bold" do
  version "2.0"
  sha256 :no_check

  url "https://mufi.info/q.php?o=mufifontfiledownload&name=PalemMUFI-bd.ttf"
  name "PalemonasMUFI Italic"
  desc "Unicode font with 1340 glyphs from MUFI v3.0"
  homepage "https://mufi.info/q.php?p=mufi/fonts/fontfamily/6"

  font "PalemMUFI-bd.ttf"

  # No zap stanza required
end
