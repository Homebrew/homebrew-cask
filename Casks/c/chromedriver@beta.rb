cask "chromedriver@beta" do
  arch arm: "arm64", intel: "x64"

  version "132.0.6834.46"
  sha256 arm:   "3aaeef748dd6972f3b41babc52a493394f3404adf578c9dcc156bc6adba8a0c7",
         intel: "6d6c71483a493b562a2d1e805bea31f52b9b43740fa89d6e727b7e7b11294333"

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
