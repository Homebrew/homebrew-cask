cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "144.0.7559.109"
  sha256 arm:   "2f3f3b09dca705f3fbf4e194020a53cd785de80fa0ed8ec422d1b43e911ce92e",
         intel: "ce402dc6b7b35bc28210a677714953f05dcb2dafd03cce0a613750158336a7d3"

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
