cask "chromedriver@beta" do
  arch arm: "arm64", intel: "x64"

  version "145.0.7632.18"
  sha256 arm:   "a7667b839a16e011d8894b3fbf3573e4c724a78bc3bfd16e313c4f272f906a15",
         intel: "852727c25dad4a064bd8d1e783732ba413a4bb062e81f761bf2aed011dff9581"

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
