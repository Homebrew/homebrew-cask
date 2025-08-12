cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "139.0.7258.68"
  sha256 arm:   "6da850508d250c00c10b09dcac00c97a58d51346047972c2c47d3e3b850d4662",
         intel: "2b9787f5f758c9f3e3888ac23270f8de47b168679718a4440bd1cea2b3cc57e9"

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

  disable! date: "2026-09-01", because: :unsigned

  conflicts_with cask: "chromedriver@beta"

  binary "chromedriver-mac-#{arch}/chromedriver"

  # No zap stanza required
end
