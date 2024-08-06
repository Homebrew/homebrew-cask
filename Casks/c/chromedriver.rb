cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "127.0.6533.99"
  sha256 arm:   "e0391d8b90ba75cb847b062fcbad05e66e329f36f99465ab245b3543ee2f6a92",
         intel: "12fcf7f49e28dc525d25b62c1719a72e267d42231e66db5c6d3b59eb00155e84"

  url "https://storage.googleapis.com/chrome-for-testing-public/#{version}/mac-#{arch}/chromedriver-mac-#{arch}.zip",
      verified: "storage.googleapis.com/chrome-for-testing-public/"
  name "ChromeDriver"
  desc "Automated testing of webapps for Google Chrome"
  homepage "https://chromedriver.chromium.org/"

  livecheck do
    url "https://googlechromelabs.github.io/chrome-for-testing/last-known-good-versions-with-downloads.json"
    regex(/v?(\d+(?:\.\d+)+)/i)
    strategy :json do |json, regex|
      json.dig("channels", "Stable", "version")&.scan(regex) { |match| match[0] }
    end
  end

  conflicts_with cask: "chromedriver@beta"

  binary "chromedriver-mac-#{arch}/chromedriver"

  # No zap stanza required
end
