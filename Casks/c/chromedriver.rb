cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "124.0.6367.91"
  sha256 arm:   "2b58c55e65ad5eb4b8dd4260da6437f4a69eeadbfb13d1719ba2d45a0faec0ba",
         intel: "44638284ae0986b15481563fe58aa01342852d197a6bb5f6965c3565f8623d76"

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

  conflicts_with cask: "chromedriver-beta"

  binary "chromedriver-mac-#{arch}/chromedriver"

  # No zap stanza required
end
