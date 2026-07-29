cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "151.0.7922.71"
  sha256 arm:   "e2956eda0e610414ea280574ccab35e5dd88b5b7f510353232fe157e5a598b7b",
         intel: "346d78f6bc0e5e102ed6e4ac6db05fe9e837cc1221aea2e6836e2bbf27895668"

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
  depends_on :macos

  binary "chromedriver-mac-#{arch}/chromedriver"

  # No zap stanza required
end
