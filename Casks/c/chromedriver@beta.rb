cask "chromedriver@beta" do
  arch arm: "arm64", intel: "x64"

  version "144.0.7559.31"
  sha256 arm:   "be9525554cb863f6391c7b2bdbf95b95dc8b73cd6e42a692806b953d639255ff",
         intel: "eab345eaf4255430b62cebfb3f4728c3b8468f85a4a61f90eae550aa4dad6048"

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
