cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "141.0.7390.76"
  sha256 arm:   "d83b3455c6792761b8eb88b7f7dbb172287703aaf8481d7cac63e668b6de2723",
         intel: "44a1cb3ffd95c9682cd7781240eda81540211749fc68790a82ed0aacf6fe2293"

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
