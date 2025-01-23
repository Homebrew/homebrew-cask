cask "chromedriver@beta" do
  arch arm: "arm64", intel: "x64"

  version "133.0.6943.27"
  sha256 arm:   "554bc1d420887a1126c6126f7dc3aebc5043a1e855ed44a578ce14045c825842",
         intel: "d59c1646d227274e5afee75d3a0fe3b0e4d7ec99b82014768d1396edb53c9c2e"

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
