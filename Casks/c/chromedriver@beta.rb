cask "chromedriver@beta" do
  arch arm: "arm64", intel: "x64"

  version "149.0.7827.22"
  sha256 arm:   "d8c6713480e4e6407c8a011f4fc258bc833c48cc24fbcd468145c8f3758d8173",
         intel: "14a905f0f62a890a5d7f0f771a11c11e823a769d999d58c631413b062291182c"

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
