cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "137.0.7151.55"
  sha256 arm:   "008ce2b28f8f98c57653b940a8882a612198a3c814ac8ee17e147865ef4772d2",
         intel: "8a6c76cde41275f539dae1c9287c50def6481f17737b6d871237e81c26eda635"

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
