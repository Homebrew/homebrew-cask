cask "font-golos-ui" do
  version :latest
  sha256 :no_check

  url "https://api.paratype.com/api/editions/ofl/download/66961",
      referer: "https://www.paratype.com/"
  name "Golos UI"
  homepage "https://www.paratype.com/fonts/pt/golos-ui"

  font "PT/PT/Golos-UI/golos-ui_vf.ttf"

  # No zap stanza required
end
