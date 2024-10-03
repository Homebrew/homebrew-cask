cask "chromedriver@beta" do
  arch arm: "arm64", intel: "x64"

  version "130.0.6723.31"
  sha256 arm:   "5b000b6a79fd0faef72c9eb6647d68d3a6dd7f52f6db22e6ebaef081550aaca9",
         intel: "b81bb2e1a9c1d677cdc56b2de81b7006414cbd68bb41fd49da63e63de611bdd6"

  url "https://storage.googleapis.com/chrome-for-testing-public/#{version}/mac-#{arch}/chromedriver-mac-#{arch}.zip",
      verified: "storage.googleapis.com/chrome-for-testing-public/"
  name "ChromeDriver"
  desc "Automated testing of webapps for Google Chrome"
  homepage "https://chromedriver.chromium.org/"

  livecheck do
    url "https://googlechromelabs.github.io/chrome-for-testing/last-known-good-versions-with-downloads.json"
    regex(/v?(\d+(?:\.\d+)+)/i)
    strategy :json do |json, regex|
      json.dig("channels", "Beta", "version")&.scan(regex) { |match| match[0] }
    end
  end

  deprecate! date: "2025-05-01", because: :unsigned

  conflicts_with cask: "chromedriver"

  binary "chromedriver-mac-#{arch}/chromedriver"

  # No zap stanza required
end
