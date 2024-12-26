cask "google-analytics-opt-out" do
  version "1.0.2"
  sha256 "3062d1470d6a18efe2afef62e57ab3632a80b29e6b94497f34332f47e960c748"

  url "https://dl.google.com/release2/Analytics-Opt-Out/akrwr324vy2vt735ezemhey3ui_#{version}/GoogleAnalyticsOptOut.dmg"
  name "Google Analytics Opt Out"
  desc "Prevent website visitor's data from being used by Google Analytics JavaScript"
  homepage "https://tools.google.com/dlpage/gaoptout"

  livecheck do
    skip "No version information available"
  end

  depends_on macos: ">= :high_sierra"

  app "Google Analytics Opt Out.app"

  caveats do
    requires_rosetta
  end
end
