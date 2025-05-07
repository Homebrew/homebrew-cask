cask "chromedriver@beta" do
  arch arm: "arm64", intel: "x64"

  version "137.0.7151.15"
  sha256 arm:   "33fefd2689a6bd4a0fa1c9cc4ff0ed9be5517b0d6ab1b44ee72060f43ad8314c",
         intel: "1684b9e1fa348c07798e0096cdcac945682909ee6e0e64b443cee1beaf70e411"

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

  conflicts_with cask: "chromedriver"

  binary "chromedriver-mac-#{arch}/chromedriver"

  # No zap stanza required
end
