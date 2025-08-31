cask "font-libertinus-keyboard" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/libertinuskeyboard/LibertinusKeyboard-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Libertinus Keyboard"
  homepage "https://fonts.google.com/specimen/Libertinus+Keyboard"

  font "LibertinusKeyboard-Regular.ttf"

  # No zap stanza required
end
