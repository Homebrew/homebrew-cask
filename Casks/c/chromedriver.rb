cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "151.0.7922.77"
  sha256 arm:   "31e6009ba241f62362b9ca44c5b8dfb10c040f84dd79985d5ea91ea3168b5ce0",
         intel: "80705f770d7fe65f7bd4dc91f9af380d2c953b9b07a4020d1369353ed8709eb3"

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
  depends_on :macos

  binary "chromedriver-mac-#{arch}/chromedriver"

  # No zap stanza required
end
