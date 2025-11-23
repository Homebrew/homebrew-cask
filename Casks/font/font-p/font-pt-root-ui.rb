cask "font-pt-root-ui" do
  version :latest
  sha256 :no_check

  url "https://api.paratype.com/api/editions/ofl/download/100278",
      referer: "https://www.paratype.com/"
  name "PT Root UI"
  homepage "https://www.paratype.com/fonts/pt/pt-root-ui"

  font "PT/PT/PT-Root-UI/pt-root-ui_vf.ttf"

  # No zap stanza required
end
