cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "133.0.6943.126"
  sha256 arm:   "9d656db66003b00cc71a07b3a1e65c6b6b6d68b386f7477999827c8131d27731",
         intel: "0774fb34d2574d0d39c842f2610b9df4e0ff6e55c242c54caa210d8b280baa6d"

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
