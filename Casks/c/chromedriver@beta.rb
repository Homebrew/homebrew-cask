cask "chromedriver@beta" do
  arch arm: "arm64", intel: "x64"

  version "144.0.7559.20"
  sha256 arm:   "9b379b315d2764bfd004efd7172f554bbf752507cce3b279791668f01846df11",
         intel: "a4362af68e6d41fd14d7cf55cadf96c450b96ac8b5b03d4fd955cee39985b22a"

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

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  conflicts_with cask: "chromedriver"

  binary "chromedriver-mac-#{arch}/chromedriver"

  # No zap stanza required
end
