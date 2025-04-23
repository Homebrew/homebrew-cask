cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "135.0.7049.114"
  sha256 arm:   "483f4f09b41d93a47afe429910b86b745ba941209360da1d45d213dc6475c440",
         intel: "a1da3421971762c4d6f258fb8e49dfd3aa855387f0b82d0333a59e972feb21d9"

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
