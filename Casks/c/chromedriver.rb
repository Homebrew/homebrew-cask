cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "132.0.6834.159"
  sha256 arm:   "8c4f819045397f2c969da9e0ba9468d63101405c971e4592a09121269b89a7d0",
         intel: "50639151eaff168e7a55325120e11ceaa4b0cdedb5bb6df65511319f064dac2f"

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
