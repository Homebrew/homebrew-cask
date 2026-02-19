cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "145.0.7632.77"
  sha256 arm:   "9e1c34b1be0067aa4d8650c629d60c45b30a6c3af88eaadb629b4092fe54994c",
         intel: "942e16f8bdb3116ee6359fd3b4816d5c0ba2844a69358f7dace1fe9daacd6ba9"

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
