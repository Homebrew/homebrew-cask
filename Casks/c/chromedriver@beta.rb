cask "chromedriver@beta" do
  arch arm: "arm64", intel: "x64"

  version "144.0.7559.3"
  sha256 arm:   "698dc88dd29b259dd369995a5b153fdffc1db186ff8dc418e89e7acf2e069cf5",
         intel: "7dcf1b51a6724b1ad03ceefb63f1f7dd65d7b694b4c8c57be4ff77836ad79373"

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
