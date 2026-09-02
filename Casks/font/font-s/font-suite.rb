cask "font-suite" do
  version "2.0.4"
  sha256 "778a3fd99f27d279cc48448bf2001224d0898bd8a381ec12df0e78c8722c8dd8"

  url "https://github.com/sun-typeface/SUITE/releases/download/v#{version}/SUITE-otf.zip"
  name "SUITE"
  name "스위트"
  homepage "https://sun.fo/suite"

  font "SUITE-Light.otf"
  font "SUITE-Regular.otf"
  font "SUITE-Medium.otf"
  font "SUITE-SemiBold.otf"
  font "SUITE-Bold.otf"
  font "SUITE-ExtraBold.otf"
  font "SUITE-Heavy.otf"

  # No zap stanza required
end
