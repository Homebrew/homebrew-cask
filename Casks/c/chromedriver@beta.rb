cask "chromedriver@beta" do
  arch arm: "arm64", intel: "x64"

  version "149.0.7827.53"
  sha256 arm:   "8bc3dbdd7c06d2b7866410fc8aba177024963c9bfaf6efdf0ed0f85bc25ece5b",
         intel: "8dc7008468d82850a7b8d646cbce820fce2da2b98f53b8fea3e1299779dfb140"

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
