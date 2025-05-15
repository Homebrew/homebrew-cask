cask "chromedriver@beta" do
  arch arm: "arm64", intel: "x64"

  version "137.0.7151.27"
  sha256 arm:   "06f1428e2a6c1b972c573a488bff1a0e2eea2b73d37e275b18e964aa3bc78372",
         intel: "1628d75cf14b9ac5146832dd89f92750b5f0373632f3ba77a66c79abbd2d6c34"

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
