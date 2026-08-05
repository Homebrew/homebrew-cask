cask "chromedriver@beta" do
  arch arm: "arm64", intel: "x64"

  version "152.0.7977.30"
  sha256 arm:   "c8a55cbd29b3909e9de878e376fd3503f97c5166c059c08bac3a65082a927258",
         intel: "e1a242232ea85c6b3f05c6fa2d0893699a2638c76acb79d63dfb3b643fd25c74"

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
