cask "chromedriver@beta" do
  arch arm: "arm64", intel: "x64"

  version "150.0.7871.13"
  sha256 arm:   "9c16a2036dfc06013d6a58df4698677d9b9c94f58bb4027d8ab57be183203bbf",
         intel: "5f2b25388a3aa7337a7e3cde376fbea8d345184d95721f062e88a36680c19d57"

  url "https://storage.googleapis.com/chrome-for-testing-public/#{version}/mac-#{arch}/chromedriver-mac-#{arch}.zip",
      verified: "storage.googleapis.com/chrome-for-testing-public/"
  name "ChromeDriver"
  desc "Automated testing of webapps for Google Chrome"
  homepage "https://chromedriver.chromium.org/"

  livecheck do
    url "https://googlechromelabs.github.io/chrome-for-testing/last-known-good-versions.json"
    strategy :json do |json|
      json.dig("channels", "Beta", "version")
    end
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  conflicts_with cask: "chromedriver"
  depends_on :macos

  binary "chromedriver-mac-#{arch}/chromedriver"

  # No zap stanza required
end
