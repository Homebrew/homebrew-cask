cask "chromedriver@beta" do
  arch arm: "arm64", intel: "x64"

  version "129.0.6668.29"
  sha256 arm:   "9cad260b52fae185b8b8fe4f4a4526f6e1558caab876e5e9555f742df10543ad",
         intel: "d44154c6c8147d79b930ce9174c0ac35b8b5aae7279b4a112cd52bcf4cae3418"

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
