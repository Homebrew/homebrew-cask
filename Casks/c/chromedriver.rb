cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "142.0.7444.59"
  sha256 arm:   "dcfb3468539ef114f00f1252e57f32963c78d3a8dbbdb702bbbad899b5935ca6",
         intel: "2d28a0762dbee292ae3d8396ed2d60f5d2890634023b6f226f586bc7c79c65e9"

  url "https://storage.googleapis.com/chrome-for-testing-public/#{version}/mac-#{arch}/chromedriver-mac-#{arch}.zip",
      verified: "storage.googleapis.com/chrome-for-testing-public/"
  name "ChromeDriver"
  desc "Automated testing of webapps for Google Chrome"
  homepage "https://chromedriver.chromium.org/"

  livecheck do
    url "https://googlechromelabs.github.io/chrome-for-testing/last-known-good-versions.json"
    strategy :json do |json|
      json.dig("channels", "Stable", "version")
    end
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  conflicts_with cask: "chromedriver@beta"

  binary "chromedriver-mac-#{arch}/chromedriver"

  # No zap stanza required
end
