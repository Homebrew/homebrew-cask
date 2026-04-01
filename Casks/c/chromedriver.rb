cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "147.0.7727.50"
  sha256 arm:   "c7b53d2190f5a421f53b61b87402c74be95c292eee1ec1ad90adb3a654c1fb5d",
         intel: "a7953923f83f2b0d70cfdceed9efb909c508c291c7134ac945098b9b559b9a87"

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
