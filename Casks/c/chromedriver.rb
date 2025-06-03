cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "137.0.7151.68"
  sha256 arm:   "bc237283efeedb02a065361ebdb499d99ec3434f19c03900dcc613301a4cdffd",
         intel: "f369406a48ca98edfc1845e3900be039ab4c93deabe941288514bb402631a5c1"

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
