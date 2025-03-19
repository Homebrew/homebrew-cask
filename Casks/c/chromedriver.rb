cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "134.0.6998.90"
  sha256 arm:   "d041ad9328a3a3d986aac9cf9b0f46f2dc67c51068b973f30c417362d64d5454",
         intel: "6cb5a24c82e0acca8574ccff0e8c6f08d929a9bc9fd2cee47fd3af1b3e8167d4"

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

  conflicts_with cask: "chromedriver@beta"

  binary "chromedriver-mac-#{arch}/chromedriver"

  # No zap stanza required
end
