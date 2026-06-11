cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "149.0.7827.115"
  sha256 arm:   "33b3acac9e97dc1e61eb5563d4fc316fd9b359e4dd964e689fe847b72f23582a",
         intel: "9a869c1fa3b3981e213a81a1b86ee12dc8b5ff5eb84c6bfa8ea24d2febde0589"

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
