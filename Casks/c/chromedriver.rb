cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "150.0.7871.124"
  sha256 arm:   "ac7129faa67c481916ade9801538183af1f88da9f141a00b9651d472771c339e",
         intel: "4523b5ed1f69f6347ddac411ff5c669964be692f64be0e651554d8335120f12f"

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
