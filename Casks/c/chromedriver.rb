cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "144.0.7559.96"
  sha256 arm:   "3ad5f2d8b7ed39d0f8e2392c4fa362b002fdd387bb81f3fb0a7a16bef580cd96",
         intel: "8f451ccb6b712648db52ef2db264236e4505062cddde9cdbba4f2bd445706f80"

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
