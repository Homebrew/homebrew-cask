cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "130.0.6723.91"
  sha256 arm:   "803adf479120071dd84717f7ff4f206b23a1984a92c381bf41cb8db5f1e64479",
         intel: "e2e137e1ff7d7d3886e4526ad319c4a1da90bcd4f601af247ac60ec58e38c570"

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
