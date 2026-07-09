cask "chromedriver@beta" do
  arch arm: "arm64", intel: "x64"

  version "151.0.7922.19"
  sha256 arm:   "e8e7890ae682efbc260ed01051620f326366fe11f05f339845c54c57834a93da",
         intel: "e4ba1152b66cbff8d75ba6c1f47262657b44e1ea11ded8a221b898f3064c85f7"

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
  depends_on :macos

  binary "chromedriver-mac-#{arch}/chromedriver"

  # No zap stanza required
end
