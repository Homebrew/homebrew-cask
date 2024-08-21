cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "128.0.6613.84"
  sha256 arm:   "2dadf6641320756ca5e271688782df6b1b28649c6b62407f7db60ece5b46f1ef",
         intel: "e30a779e51a4b8d0e5985fb76e624e99a31c71072c5c165a54ef7949ee958f53"

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
