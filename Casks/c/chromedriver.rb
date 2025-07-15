cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "138.0.7204.157"
  sha256 arm:   "97ea371992949bf03eadacc8c4361524bb2d5ee1a247118632681ec003ff1621",
         intel: "64a34403c35d0b7fe10207ff25b37b9abea8044bc2d603fbc1c8c99b8ac257a4"

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
