cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "125.0.6422.141"
  sha256 arm:   "3619c9767af34e3f20422ca9e0fce65c7c7a96db31515af3d002fdc7c9c689b0",
         intel: "673d94e7341649c203eeb004e8599300379cb38cd1e37d0a6557a7fa1b25f8a2"

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
