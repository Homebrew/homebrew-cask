cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "149.0.7827.155"
  sha256 arm:   "f38fb75589ed57d94ecf8cf1e58a378d2e9cebc62045a3e30f2a4319a9ea8a5b",
         intel: "448499e1435f3d1624eaf72383d15d4c48d07bfc1ffebd374d31bf14a61d033c"

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
