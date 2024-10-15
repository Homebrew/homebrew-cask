cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "130.0.6723.58"
  sha256 arm:   "b5a1b9f243204140f8d1a1aa9f2c7d3bd7bd9b8a86b13597e7b7230f735e1e6e",
         intel: "627741ce150d9a7e6d25d0aa2e6a54aecd960575e94f188a08d733584cfa0d4e"

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
