cask "font-pt-astra-sans" do
  version :latest
  sha256 :no_check

  url "https://api.paratype.com/api/editions/ofl/download/52180",
      referer: "https://www.paratype.com/"
  name "PT Astra Sans"
  homepage "https://www.paratype.com/fonts/pt/pt-astra-sans"

  font "PT/PT/PT-Astra-Sans/pt-astra-sans_bold-italic.ttf"
  font "PT/PT/PT-Astra-Sans/pt-astra-sans_bold.ttf"
  font "PT/PT/PT-Astra-Sans/pt-astra-sans_italic.ttf"
  font "PT/PT/PT-Astra-Sans/pt-astra-sans_regular.ttf"

  # No zap stanza required
end
