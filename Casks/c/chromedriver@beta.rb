cask "chromedriver@beta" do
  arch arm: "arm64", intel: "x64"

  version "143.0.7499.25"
  sha256 arm:   "1b9e34b997d699b7ca4653cd0443e073165ce2bc4875582ba4fe329830589ed4",
         intel: "8e0c0fbd15e7fd6b6a9e810b1eb0a9bd12d026d50f4e2f47299e817573bb0676"

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
