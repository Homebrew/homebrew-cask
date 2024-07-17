cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "126.0.6478.182"
  sha256 arm:   "86decba00e226c4716b973a4f898a608dd2c8e33e898705c3bc21914d9cc6ae9",
         intel: "61d420adc4e0c86b527d3eb005e7527c1b78d0368addf1bebaf074c9a9ef44e5"

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
