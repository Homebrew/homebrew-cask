cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "140.0.7339.185"
  sha256 arm:   "de20bbbb71a2a902fb38d92c08ecd43a8dd896b896b8ab69af79b7489cbb5464",
         intel: "36ac36651eb0c0afe45854e626dd78c259b539d54c12d48f4f9c47692c4639b8"

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
