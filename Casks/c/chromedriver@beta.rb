cask "chromedriver@beta" do
  arch arm: "arm64", intel: "x64"

  version "147.0.7727.3"
  sha256 arm:   "89d217e00301d9c5708cf57e19b5949f8dd4f1aff8b91fc8e76ccb7c14fa96fa",
         intel: "ed38e9d626d7382f80ac43b8bd8c918e516a5ec2f0d9bffffd3814cc721aab3b"

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
