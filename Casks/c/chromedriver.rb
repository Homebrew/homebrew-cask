cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "146.0.7680.66"
  sha256 arm:   "36a89f18770f7422bba363bc21e2ed6da7db2dd479d816da307ff338e01a6612",
         intel: "a6e56f78bef706aee5dcca6b1033ad96f195ab1dc1d9b01ea810181b124ca11d"

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
