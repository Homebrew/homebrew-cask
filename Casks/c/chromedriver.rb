cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "132.0.6834.110"
  sha256 arm:   "e08b66a38cc4be62d33e6a2168dff708d98507e406aa368c98083c3b7e97d173",
         intel: "6355b126c81e8de595f52d7bb472b945c701efcac9bcbdbe360ad4a967bd54c7"

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

  conflicts_with cask: "chromedriver@beta"

  binary "chromedriver-mac-#{arch}/chromedriver"

  # No zap stanza required
end
