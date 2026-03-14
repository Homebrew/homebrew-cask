cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "146.0.7680.80"
  sha256 arm:   "74d10720a97b5fac49b56edd1290ea9fca9350fc64227c4be5dec2ff0f2310d6",
         intel: "0f104bfe0d9608ab19b837a0b5780da525104235941006bab70288535c51f2a3"

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
