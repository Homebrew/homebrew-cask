cask "google-analytics-opt-out" do
  version "1.0.1"
  sha256 "ffe34fd0cb98bd0b9e29498af40876d65313d61b5bad5a1c388be35626c5e457"

  url "https://dl.google.com/analytics/optout/safari/GoogleAnalyticsOptOut_#{version}.dmg"
  name "Google Analytics Opt Out"
  desc "Prevent website visitor's data from being used by Google Analytics JavaScript"
  homepage "https://tools.google.com/dlpage/gaoptout"

  livecheck do
    skip "No version information available"
  end

  app "Google Analytics Opt Out.app"

  caveats do
    requires_rosetta
  end
end
