cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "145.0.7632.76"
  sha256 arm:   "7d6a50291232bc9291a7a48f57d5574bd580fa7d612207744d811b9981d002b8",
         intel: "c6abcd8e17fc630f3797a50a3acdff93ec642af88c7584da823d465d49f5c19b"

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
