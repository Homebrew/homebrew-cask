cask "chromedriver@beta" do
  arch arm: "arm64", intel: "x64"

  version "136.0.7103.25"
  sha256 arm:   "a4926c3c0fe035be01bd8495ae448b953eb0dcaed4b645b25df70b09aa6bfcf2",
         intel: "a335c70fe7b2e541bf1825da9c9d3d66042207c1eecbb0bbad3a781e2d6faf62"

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

  conflicts_with cask: "chromedriver"

  binary "chromedriver-mac-#{arch}/chromedriver"

  # No zap stanza required
end
