cask "font-cal-sans" do
  version "2.011"
  sha256 "3b8978f7a5b884ad3095337ee234b19f1b9ace79c9f1b59b42759e64e316185e"

  url "https://github.com/calcom/sans/releases/download/v#{version}/calsans-static-essentials.zip"
  name "Cal Sans"
  homepage "https://github.com/calcom/sans"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "calsans-static-essentials/CalSans-Bold.ttf"
  font "calsans-static-essentials/CalSans-BoldItalic.ttf"
  font "calsans-static-essentials/CalSans-Italic.ttf"
  font "calsans-static-essentials/CalSans-Medium.ttf"
  font "calsans-static-essentials/CalSans-MediumItalic.ttf"
  font "calsans-static-essentials/CalSans-Regular.ttf"
  font "calsans-static-essentials/CalSans-SemiBold.ttf"
  font "calsans-static-essentials/CalSans-SemiBoldItalic.ttf"
  font "calsans-static-essentials/CalSansTextUI-Bold.ttf"
  font "calsans-static-essentials/CalSansTextUI-BoldItalic.ttf"
  font "calsans-static-essentials/CalSansTextUI-Italic.ttf"
  font "calsans-static-essentials/CalSansTextUI-Medium.ttf"
  font "calsans-static-essentials/CalSansTextUI-MediumItalic.ttf"
  font "calsans-static-essentials/CalSansTextUI-Regular.ttf"
  font "calsans-static-essentials/CalSansTextUI-SemiBold.ttf"
  font "calsans-static-essentials/CalSansTextUI-SemiBoldItalic.ttf"

  zap :not_required
end
