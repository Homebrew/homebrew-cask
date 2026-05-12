cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "148.0.7778.167"
  sha256 arm:   "a41984c9442ab07ca6d0af4eb10c0e36834265021388f58069b6c331ca03a924",
         intel: "78ab4a8617696e9f2a8d969d5239d9d05ba9e1cacd04d2f3529fe8895cded36d"

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
