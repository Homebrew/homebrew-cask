cask "font-calling-code-regular" do
  version :latest
  sha256 :no_check

  url "https://dl.dafont.com/dl/?f=calling_code"
  name "Calling Code"
  name "Calling Code Regular"
  homepage "https://dharmatype.com/calling-code"

  font "CallingCode-Regular.otf"
  font "CallingCode-Regular.ttf"

  # No zap stanza required
end
