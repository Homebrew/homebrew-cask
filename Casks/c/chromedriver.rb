cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "141.0.7390.122"
  sha256 arm:   "23ff577ca01f74aba74c1bf4c4667da41cfd37ac5095cdefe77aa4b555e12969",
         intel: "ccb0000fea8263973d839d40be51dfe8488fbe9364c7c78bc03ae14a73bfa001"

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
