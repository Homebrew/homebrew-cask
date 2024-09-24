cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "129.0.6668.70"
  sha256 arm:   "f56407f19eefdcfb4528703a6ecad780224359ebe1d583e33f20e9eccff18652",
         intel: "9b992e49e68ae2ff06b6396a24e3f78ac37fa3ef6e3b13ee4847a08b49d868e3"

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
