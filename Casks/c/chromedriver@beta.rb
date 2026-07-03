cask "chromedriver@beta" do
  arch arm: "arm64", intel: "x64"

  version "151.0.7922.10"
  sha256 arm:   "78fef59f2fc9c204cc12374221586ae5a13f9b492d99b6cc3c30ce0bc4a7e072",
         intel: "95bf675238e32445798e915802dbc1608d4cb01df14f37016287a82d306e0d2d"

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
