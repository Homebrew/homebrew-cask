cask "chromedriver@beta" do
  arch arm: "arm64", intel: "x64"

  version "153.0.8010.12"
  sha256 arm:   "fe2a4644020a93e79614d547074932b9eb0c00ed34b9fec0e1d87e2ee6d24886",
         intel: "36331c586f5b9e26d9dfd8cb0c01b248313afaf25839b99d725be2bfcba2b529"

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
