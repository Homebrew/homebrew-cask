cask "font-pt-serif" do
  version :latest
  sha256 :no_check

  url "https://api.paratype.com/api/editions/ofl/download/52194",
      referer: "https://www.paratype.com/"
  name "PT Serif"
  homepage "https://www.paratype.com/fonts/pt/pt-serif"

  font "PT/PT/PT-Serif/pt-serif_bold-italic.ttf"
  font "PT/PT/PT-Serif/pt-serif_bold.ttf"
  font "PT/PT/PT-Serif/pt-serif_caption-italic.ttf"
  font "PT/PT/PT-Serif/pt-serif_caption-regular.ttf"
  font "PT/PT/PT-Serif/pt-serif_italic.ttf"
  font "PT/PT/PT-Serif/pt-serif_regular.ttf"

  # No zap stanza required
end
