cask "font-calling-code" do
  version :latest
  sha256 :no_check

  url "https://dl.dafont.com/dl/?f=calling_code"
  name "Calling Code"
  homepage "https://www.dafont.com/calling-code.font"

  font "CallingCode-Regular.otf"
  font "CallingCode-Regular.ttf"

  # No zap stanza required
end
