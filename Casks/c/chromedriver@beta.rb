cask "chromedriver@beta" do
  arch arm: "arm64", intel: "x64"

  version "143.0.7499.4"
  sha256 arm:   "a7d8aed9eb17e1e4304e3808f5d6762b3953c4f2faf2c53eb0bbc992b6e4028f",
         intel: "4387d0ae0c3eb8c7cd4d681e479dab663d64aab6cab05b3cc3235489534b6f00"

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
