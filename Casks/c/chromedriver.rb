cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "139.0.7258.154"
  sha256 arm:   "842abfd280e701161bc8c3c66934b63ab51a64722fd331e142950a8ee1314c85",
         intel: "949505cb45f015607dd2e0e56d89f4f4c8415a51dc41d97c20b60d78af6caabc"

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
