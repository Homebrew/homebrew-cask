cask "chromedriver@beta" do
  arch arm: "arm64", intel: "x64"

  version "145.0.7632.26"
  sha256 arm:   "42df530d230d12b5f38beabfaf5547a44085725973c2f075c7c2600e8e19b2e0",
         intel: "6a355ca7652095918b58d5baa3cf3769e62d3f4462b5cb8a82109a3213f33bba"

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
