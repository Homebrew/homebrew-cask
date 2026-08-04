cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "151.0.7922.76"
  sha256 arm:   "7f0c7c77ee4a36b3d7a62b7372a44ad3cc287e4664a31822eab447fa10cdb62d",
         intel: "a9fdd11c994f499fb57cd18694cce6c1772ae53ea3586ea2edaebc7d4b2b1e60"

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
