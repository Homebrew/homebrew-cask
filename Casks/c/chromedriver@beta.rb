cask "chromedriver@beta" do
  arch arm: "arm64", intel: "x64"

  version "142.0.7444.52"
  sha256 arm:   "8d59b715a042143e0ed900f572ee59d374e4f4d14c9a6bb85812cf318c4b9da7",
         intel: "b0dd906eb112de7611d2d791d92e3b1389dbba70e6118adc085beb736e2ea2c8"

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
