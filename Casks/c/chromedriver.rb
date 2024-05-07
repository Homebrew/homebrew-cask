cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "124.0.6367.155"
  sha256 arm:   "3fdaa2f2b47c0d6f96393f9ebf612003ddd2b671ab062207bb651b904852fb43",
         intel: "e0c6700f68e08ceac14ed923c56d171fe9597cff308fb67a7a0ecbc05ce208f5"

  url "https://storage.googleapis.com/chrome-for-testing-public/#{version}/mac-#{arch}/chromedriver-mac-#{arch}.zip",
      verified: "storage.googleapis.com/chrome-for-testing-public/"
  name "ChromeDriver"
  desc "Automated testing of webapps for Google Chrome"
  homepage "https://chromedriver.chromium.org/"

  livecheck do
    url "https://googlechromelabs.github.io/chrome-for-testing/last-known-good-versions-with-downloads.json"
    regex(/v?(\d+(?:\.\d+)+)/i)
    strategy :json do |json, regex|
      json["channels"]["Stable"]["version"]&.scan(regex) { |match| match[0] }
    end
  end

  conflicts_with cask: "chromedriver@beta"

  binary "chromedriver-mac-#{arch}/chromedriver"

  # No zap stanza required
end
