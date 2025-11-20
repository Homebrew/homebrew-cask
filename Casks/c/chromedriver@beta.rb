cask "chromedriver@beta" do
  arch arm: "arm64", intel: "x64"

  version "143.0.7499.40"
  sha256 arm:   "f4af9ad8809822439d952c1b787c9050c2467cfdeb257eb1aa3e57900484f2d1",
         intel: "7530cc8f958661450874f8d8a5ad9bbe23ae058513c08abb3a900f1dac03badf"

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

  binary "chromedriver-mac-#{arch}/chromedriver"

  # No zap stanza required
end
