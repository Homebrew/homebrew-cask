cask "chromedriver@beta" do
  arch arm: "arm64", intel: "x64"

  version "128.0.6613.18"
  sha256 arm:   "d97714f11a9bce630c866db55fdc55cab229d6d9153d8d436f57d7ecb0ca96c2",
         intel: "134ba9b47ff9691ce58b353b15c373e2aba371a14579959ebc07f75e98110cea"

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
