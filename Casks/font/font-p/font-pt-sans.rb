cask "font-pt-sans" do
  version :latest
  sha256 :no_check

  url "https://api.paratype.com/api/editions/ofl/download/52212",
      referer: "https://www.paratype.com/"
  name "PT Sans"
  homepage "https://www.paratype.com/fonts/pt/pt-sans"

  font "PT/PT/PT-Sans/pt-sans_bold-italic.ttf"
  font "PT/PT/PT-Sans/pt-sans_bold.ttf"
  font "PT/PT/PT-Sans/pt-sans_caption-bold.ttf"
  font "PT/PT/PT-Sans/pt-sans_caption-regular.ttf"
  font "PT/PT/PT-Sans/pt-sans_italic.ttf"
  font "PT/PT/PT-Sans/pt-sans_narrow-bold.ttf"
  font "PT/PT/PT-Sans/pt-sans_narrow-regular.ttf"
  font "PT/PT/PT-Sans/pt-sans_regular.ttf"

  # No zap stanza required
end
