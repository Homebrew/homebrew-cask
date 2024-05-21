cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "125.0.6422.76"
  sha256 arm:   "85125e69e412df4b2b3b93351a2e3755847f2ab8cd0211f45e8ce4133bdc6c0d",
         intel: "0d7d09df178e2b80f2e010236eb6eed6b9c892617c9e59b2f6d31a4212ec15c5"

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
