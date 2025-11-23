cask "font-nimbus-sans-l" do
  version :latest
  sha256 :no_check

  url "https://fontlibrary.org/assets/downloads/nimbus-sans-l/2c1b22cb6708de61d2051f12c90a024e/nimbus-sans-l.zip"
  name "Nimbus Sans L"
  homepage "https://fontlibrary.org/en/font/nimbus-sans-l"

  font "nimbus-sans-l/NimbusSanL-Bold.ttf"
  font "nimbus-sans-l/NimbusSanL-BoldCond.ttf"
  font "nimbus-sans-l/NimbusSanL-BoldCondItal.ttf"
  font "nimbus-sans-l/NimbusSanL-BoldItal.ttf"
  font "nimbus-sans-l/NimbusSanL-Regu.ttf"
  font "nimbus-sans-l/NimbusSanL-ReguCond.ttf"
  font "nimbus-sans-l/NimbusSanL-ReguCondItal.ttf"
  font "nimbus-sans-l/NimbusSanL-ReguItal.ttf"

  # No zap stanza required
end
