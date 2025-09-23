cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "140.0.7339.207"
  sha256 arm:   "6a1022d96f70475a7e75861b6ee4d6c1b0a81dd6fb8f6043d963f3153caa0722",
         intel: "f3a0ba58a37a7f37907cfbbb0d92a26b7daf3a9eaec0641a4f2328b17f2cda4d"

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
