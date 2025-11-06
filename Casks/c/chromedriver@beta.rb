cask "chromedriver@beta" do
  arch arm: "arm64", intel: "x64"

  version "143.0.7499.17"
  sha256 arm:   "fcfd9db4cb8f3d5562598ab0b4bedc574832b155fce6df9b15d604c7dd92d899",
         intel: "a7a24690897f4cbf4f015359b145bfe5115b87628b90e6e6734c5124716f37ac"

  url "https://storage.googleapis.com/chrome-for-testing-public/#{version}/mac-#{arch}/chromedriver-mac-#{arch}.zip",
      verified: "storage.googleapis.com/chrome-for-testing-public/"
  name "ChromeDriver"
  desc "Automated testing of webapps for Google Chrome"
  homepage "https://chromedriver.chromium.org/"

  livecheck do
    url "https://googlechromelabs.github.io/chrome-for-testing/last-known-good-versions.json"
    strategy :json do |json|
      json.dig("channels", "Beta", "version")
    end
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  conflicts_with cask: "chromedriver"

  binary "chromedriver-mac-#{arch}/chromedriver"

  # No zap stanza required
end
