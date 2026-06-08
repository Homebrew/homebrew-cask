cask "font-elice-digital-baeum" do
  version :latest
  sha256 :no_check

  url "https://font.elice.io/static/downloads/EliceDigitalBaeum_OTF.zip"
  name "Elice Digital Baeum"
  homepage "https://font.elice.io/"

  font "EliceDigitalBaeumOTF_Regular.otf"
  font "EliceDigitalBaeumOTF_Bold.otf"

  # No zap stanza required
end
