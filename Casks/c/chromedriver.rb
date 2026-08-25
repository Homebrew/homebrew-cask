cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "152.0.7977.64"
  sha256 arm:   "9e8b67036bf3d744feb97d5711a6f6ce40855d9554e93adfa4a869aa69677ef3",
         intel: "74728768463f6ffd63e6bfe5bd75f1e12876066745417cd6f9929704428da590"

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
  depends_on :macos

  binary "chromedriver-mac-#{arch}/chromedriver"

  # No zap stanza required
end
