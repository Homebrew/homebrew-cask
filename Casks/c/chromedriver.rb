cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "134.0.6998.88"
  sha256 arm:   "c1d84c3c9f0672fddbb086c1d0650a9ce76393a37fd63450d4659f230d28a11c",
         intel: "30b2ee9abdd73d56e0e1d390bf04fe1a14a88522b765b045b42b768c2be74738"

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
