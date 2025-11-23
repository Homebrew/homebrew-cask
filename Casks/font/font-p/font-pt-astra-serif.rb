cask "font-pt-astra-serif" do
  version :latest
  sha256 :no_check

  url "https://api.paratype.com/api/editions/ofl/download/52179",
      referer: "https://www.paratype.com/"
  name "PT Astra Serif"
  homepage "https://www.paratype.com/fonts/pt/pt-astra-serif"

  font "PT/PT/PT-Astra-Serif/pt-astra-serif_bold-italic.ttf"
  font "PT/PT/PT-Astra-Serif/pt-astra-serif_bold.ttf"
  font "PT/PT/PT-Astra-Serif/pt-astra-serif_italic.ttf"
  font "PT/PT/PT-Astra-Serif/pt-astra-serif_regular.ttf"

  # No zap stanza required
end
