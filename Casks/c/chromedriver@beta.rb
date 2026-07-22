cask "chromedriver@beta" do
  arch arm: "arm64", intel: "x64"

  version "151.0.7922.47"
  sha256 arm:   "d450678936f5a2b39598a4e7d548177931a7a5c4759c0e4824f2cab1ae26523e",
         intel: "1d1fe5357438a47f66db3a1e2f3325112a1a2e286463510e778665d39c317449"

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
