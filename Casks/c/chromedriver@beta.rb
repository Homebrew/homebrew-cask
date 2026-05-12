cask "chromedriver@beta" do
  arch arm: "arm64", intel: "x64"

  version "149.0.7827.3"
  sha256 arm:   "e826d5aaff593222c65772d3b846a9d3d1d8ea3571c7f8120c569d52a70e4869",
         intel: "32fd14732102f3e10a24cbf7de19c2420b26ba7f00992cf94d2265e4a36603dc"

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
