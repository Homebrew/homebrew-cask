cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "148.0.7778.97"
  sha256 arm:   "9f9d9b85d95884001be7bbd5dacdec5e4d19bf62cbbfc536b3b2dac84b609833",
         intel: "49178caaf147a788e40db69d262ef66711a9871c3e79a58844ab94e6ccbcd1b7"

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
  depends_on :macos

  binary "chromedriver-mac-#{arch}/chromedriver"

  # No zap stanza required
end
