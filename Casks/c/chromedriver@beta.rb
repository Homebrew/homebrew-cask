cask "chromedriver@beta" do
  arch arm: "arm64", intel: "x64"

  version "125.0.6422.26"
  sha256 arm:   "d9f73cd1318eac9ed6e11d165931f16e18eee4eaadb523f95c2e9cacc35388fc",
         intel: "643ea14b8bb3e295b9328aa174925c6907f2ae77fd15a7aea8d751bafbe6f14a"

  url "https://storage.googleapis.com/chrome-for-testing-public/#{version}/mac-#{arch}/chromedriver-mac-#{arch}.zip",
      verified: "storage.googleapis.com/chrome-for-testing-public/"
  name "ChromeDriver"
  desc "Automated testing of webapps for Google Chrome"
  homepage "https://chromedriver.chromium.org/"

  livecheck do
    url "https://googlechromelabs.github.io/chrome-for-testing/last-known-good-versions-with-downloads.json"
    regex(/v?(\d+(?:\.\d+)+)/i)
    strategy :json do |json, regex|
      json["channels"]["Beta"]["version"]&.scan(regex) { |match| match[0] }
    end
  end

  deprecate! date: "2025-05-01", because: :unsigned

  conflicts_with cask: "chromedriver"

  binary "chromedriver-mac-#{arch}/chromedriver"

  # No zap stanza required
end
