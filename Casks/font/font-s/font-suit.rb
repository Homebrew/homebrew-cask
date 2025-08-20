cask "font-suit" do
  version "2.0.5"
  sha256 "c832868eb7b403b9d0af4a513ae50e8a0b1b7781471247fca71f1efef84b96aa"

  url "https://github.com/sun-typeface/SUIT/releases/download/v#{version}/SUIT-otf.zip",
      verified: "github.com/sun-typeface/SUIT/"
  name "SUIT"
  name "수트"
  homepage "https://sun.fo/suit"

  font "SUIT-Thin.otf"
  font "SUIT-ExtraLight.otf"
  font "SUIT-Light.otf"
  font "SUIT-Regular.otf"
  font "SUIT-Medium.otf"
  font "SUIT-SemiBold.otf"
  font "SUIT-Bold.otf"
  font "SUIT-ExtraBold.otf"
  font "SUIT-Heavy.otf"

  # No zap stanza required
end
