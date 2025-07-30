cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "138.0.7204.183"
  sha256 arm:   "7a09dc603b366523d8bb21316e620ee093d3c4e944d428a7e5922e8464a22ba1",
         intel: "47d8ecf55eb091e53b12b70a37cfb35df282c55c01488d6b03169c7fe07dc983"

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
