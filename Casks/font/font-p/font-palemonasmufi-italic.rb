cask "font-palemonasmufi-italic" do
  version "2.0"
  sha256 :no_check

  url "https://mufi.info/q.php?o=mufifontfiledownload&name=PalemMUFI-it.ttf"
  name "PalemonasMUFI Italic"
  desc "Unicode font with 2217 glyphs from MUFI v3.0"
  homepage "https://mufi.info/q.php?p=mufi/fonts/fontfamily/6"

  font "PalemMUFI-it.ttf"

  # No zap stanza required
end
