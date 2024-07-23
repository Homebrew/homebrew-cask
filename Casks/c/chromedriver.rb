cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "127.0.6533.72"
  sha256 arm:   "b2cb7bdcec54b2bb36c9603bdaa7689c04468bf5b415839b35fa2589d0a25e2a",
         intel: "73f94c90e7685bfb57e7ba2997fc1e24687f8b251e4d31795de8ecec8a40f908"

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
