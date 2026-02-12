cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "145.0.7632.67"
  sha256 arm:   "55611d43bac915acc6fd0018c1520f0c61881e8108a13ecc1d160345eeee55ba",
         intel: "ff122935bfe34003b7cd908908952e06dc3a239f25b145f6804d62910d0c295d"

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
