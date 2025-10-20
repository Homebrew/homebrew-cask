cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "141.0.7390.78"
  sha256 arm:   "9cc390d9f9db3da35ffb16dea9a509a980ee63a61c267a4456b5cbd9373b04e3",
         intel: "2ed6bb0d416aeb81eea785fcb8e6b94f5d721300052907968ec5b2383b75ff17"

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
