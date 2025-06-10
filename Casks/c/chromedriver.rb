cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "137.0.7151.69"
  sha256 arm:   "0c298c427f00b18d6598aabe58a09498b63d5d6d77f7fd7f58ab235baa2b1e8a",
         intel: "947e1eaead3db9266f78ae43d38ff86afc189b2520db887faea9da0c985ab62a"

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
