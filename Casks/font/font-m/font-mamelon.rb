cask "font-mamelon" do
  version :latest
  sha256 :no_check

  url "https://moji-waku.com/download/mamelon_hireg.zip"
  name "Mamelon"
  homepage "https://moji-waku.com/mamelon/index.html"

  font "mamelon_hireg/Mamelon-3-Hi-Regular.otf"
  font "mamelon_hireg/Mamelon-3.5-Hi-Regular.otf"
  font "mamelon_hireg/Mamelon-4-Hi-Regular.otf"
  font "mamelon_hireg/Mamelon-5-Hi-Regular.otf"

  # No zap stanza required
end
