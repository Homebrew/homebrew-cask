cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "151.0.7922.34"
  sha256 arm:   "6f9c61d45acb74a8d7a6c9d49d9fd62fe14fcfa065d7f8f191722bc4d7dd8524",
         intel: "8d24d0d3421eeebecece5b099bf707eac0593035b1a9219d639c306b3d823949"

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
