cask "chromedriver@beta" do
  arch arm: "arm64", intel: "x64"

  version "142.0.7444.23"
  sha256 arm:   "ccf9e610a7cda5217ff1cd62d5af3c2cd18474abfe6b380778626ef16fb2aca7",
         intel: "695d4c4d71f31df7ea9d8bfccd19075662212b7fed9f9487fa2fa2aaa790faa6"

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
