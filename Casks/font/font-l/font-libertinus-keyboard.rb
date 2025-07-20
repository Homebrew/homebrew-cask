cask "font-libertinus-keyboard" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/libertinuskeyboard/LibertinusKeyboard-Regular.ttf"
  name "Libertinus Keyboard"
  homepage "https://github.com/googlefonts/libertinus"

  font "LibertinusKeyboard-Regular.ttf"

  # No zap stanza required
end
