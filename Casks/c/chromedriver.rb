cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "137.0.7151.70"
  sha256 arm:   "aef01a861dfaa6f4e96cb41ecdff1968e32f84072c3ec48181d39887569d512b",
         intel: "d80825e87543d99ad7a8b9356fb236ddb7df3ba087f8f314991195da27a7ccc3"

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
