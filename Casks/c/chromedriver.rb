cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "143.0.7499.146"
  sha256 arm:   "a797a6eba2534320f6d50b5c6b9ffcb9ec5df45b77b1befcfaab23c0e00b41ff",
         intel: "5fbac6bee59ae9fa4bb58431c4f91d8f9cd186c228610bb670bc273622421121"

  url "https://storage.googleapis.com/chrome-for-testing-public/#{version}/mac-#{arch}/chromedriver-mac-#{arch}.zip",
      verified: "storage.googleapis.com/chrome-for-testing-public/"
  name "ChromeDriver"
  desc "Automated testing of webapps for Google Chrome"
  homepage "https://chromedriver.chromium.org/"

  livecheck do
    url "https://googlechromelabs.github.io/chrome-for-testing/last-known-good-versions.json"
    strategy :json do |json|
      json.dig("channels", "Stable", "version")
    end
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  conflicts_with cask: "chromedriver@beta"

  binary "chromedriver-mac-#{arch}/chromedriver"

  # No zap stanza required
end
