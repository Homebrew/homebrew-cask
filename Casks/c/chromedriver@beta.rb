cask "chromedriver@beta" do
  arch arm: "arm64", intel: "x64"

  version "145.0.7632.45"
  sha256 arm:   "ac5e562e7ffb192edf497845a64633e8c14efdb30d35a836c8cc95f8db3a17b6",
         intel: "b49a4d2c2de37e64c8a3c0427c685e2bc8985dd165eca12dd8d3d69ff81977d4"

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
