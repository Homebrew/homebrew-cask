cask "chromedriver@beta" do
  arch arm: "arm64", intel: "x64"

  version "128.0.6613.36"
  sha256 arm:   "40b6552324821dc71d1579e9e59f4e679b10e3b385c54e79b4d117835bd1a38d",
         intel: "f39e1d4619c15cc5b2230ed58195540f52f851cc696a0cf59494b10c62c31001"

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
