cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "125.0.6422.60"
  sha256 arm:   "355aabfe2e12e173fecf4f984fa0ae0e79b23781ad4bab6dc890ce434e4a07ed",
         intel: "6a1c0f48fa01da1e99ab878f6ef4a662cdd635cf8ca415d063260b7f4652decb"

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
