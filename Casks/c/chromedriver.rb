cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "146.0.7680.72"
  sha256 arm:   "e8648c90d6e5587e694ff57b8e358cc635f91ebf65dad01ae51f9990a87ce861",
         intel: "600fc304325b1d9c98d1c3819a99c628213c7389376e9f45b5f8226168bf51f5"

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
