cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "138.0.7204.92"
  sha256 arm:   "15a3231c9af28e0a9d3391225bc57a8fd8e166a59e3c41c9fc0aeb21572a5ac3",
         intel: "5d1a8aed0a7ac955680a1a33964f1d48b2d09241752c79914de64012bd5e6ddb"

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
