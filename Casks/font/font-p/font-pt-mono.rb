cask "font-pt-mono" do
  version :latest
  sha256 :no_check

  url "https://api.paratype.com/api/editions/ofl/download/52218",
      referer: "https://www.paratype.com/"
  name "PT Mono"
  homepage "https://www.paratype.com/fonts/pt/pt-mono"

  font "PT/PT/PT-Mono/pt-mono_bold.ttf"
  font "PT/PT/PT-Mono/pt-mono_regular.ttf"

  # No zap stanza required
end
