cask "chromedriver@beta" do
  arch arm: "arm64", intel: "x64"

  version "139.0.7258.5"
  sha256 arm:   "a8844c895ca58881a81c5d41279fd7bf346aad84cb1f89c15dac47466148a66c",
         intel: "f8e6b76c10453206b6e360e53a6b4f67feef2e51eeae29bfd68df9664ae63d5a"

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
