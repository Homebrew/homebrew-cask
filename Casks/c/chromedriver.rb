cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "143.0.7499.169"
  sha256 arm:   "1635bac913afe40f5b4d22ee03848f39904a39a7d4fd062532cd832ed001a73f",
         intel: "06342aca51f5ab5e9a5f2858d9953dadb52e29e5cfcb0229d1ab1a989ebc6be2"

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
