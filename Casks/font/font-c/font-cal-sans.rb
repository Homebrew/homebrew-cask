cask "font-cal-sans" do
  version "2.003"
  sha256 "07627067215d540617e662674301d4c020b587a8f55eb568ada51ebb9bff2d59"

  url "https://github.com/calcom/sans/releases/download/v#{version}/calsans-static-essentials.zip"
  name "Cal Sans"
  homepage "https://github.com/calcom/sans"

  font "calsans-static-essentials/CalSans-Bold.ttf"
  font "calsans-static-essentials/CalSans-BoldItalic.ttf"
  font "calsans-static-essentials/CalSans-Italic.ttf"
  font "calsans-static-essentials/CalSans-Medium.ttf"
  font "calsans-static-essentials/CalSans-MediumItalic.ttf"
  font "calsans-static-essentials/CalSans-Regular.ttf"
  font "calsans-static-essentials/CalSans-SemiBold.ttf"
  font "calsans-static-essentials/CalSans-SemiBoldItalic.ttf"

  # No zap stanza required
end
