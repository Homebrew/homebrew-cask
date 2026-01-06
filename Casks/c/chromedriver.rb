cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "143.0.7499.192"
  sha256 arm:   "30f79f97d3a3cd391b459694b718b4b90524e1f15e0aeb47d59d13fa9a7372ee",
         intel: "2e104f71d6bc9e28cb475ae3f7cd5d4e475dde130cd28af7e23ab58c4dce4d74"

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
