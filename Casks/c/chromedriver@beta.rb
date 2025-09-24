cask "chromedriver@beta" do
  arch arm: "arm64", intel: "x64"

  version "141.0.7390.37"
  sha256 arm:   "2788ce2c9967daef17c32e67cc8d894f8a6b6943dc2d3828850c196a851e4c2d",
         intel: "4528f05e99aeafe5d750957dd10800c514ad101c0a71ed933ba40b8fbdbd5f34"

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
