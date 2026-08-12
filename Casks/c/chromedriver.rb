cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "152.0.7977.42"
  sha256 arm:   "c6ef55f25a0524c7b82f7cd6aff0ed8906c90047743dd9ad3dac763c1422b47d",
         intel: "b4350a9952a2d838425e0488dc7e4c5d93a61633462958855329bf287e5782a8"

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
