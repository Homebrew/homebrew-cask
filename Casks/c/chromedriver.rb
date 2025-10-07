cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "141.0.7390.65"
  sha256 arm:   "08cfb5203050823091bfa6fa116d3d4934719a897c4dc3d9a01c96d26fddbaa4",
         intel: "8776657e5718701f9f13740e04efbcff1cb08bcfccc7d459d88008775c05d9e6"

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
