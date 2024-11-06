cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "130.0.6723.116"
  sha256 arm:   "beb6c8a47ac1c1bcea6abb3b0f9e3a789ef384484007469babb3178aa954e2db",
         intel: "f8f71dfbed7dfe7255b2a1abda3cf28cc4d661f6f653dc1282735c703c86b865"

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
