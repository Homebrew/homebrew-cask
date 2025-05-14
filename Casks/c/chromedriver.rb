cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "136.0.7103.94"
  sha256 arm:   "dbc18ee1d39e77c05461a9fdf75684844eeaf9eaf7e38b8f059c2e75f1e13596",
         intel: "5870fe17dd2c5d8ffb942c56d57a518e8a94d358e19b61e74cadd2a196e5d370"

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
