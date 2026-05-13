cask "chromedriver@beta" do
  arch arm: "arm64", intel: "x64"

  version "149.0.7827.14"
  sha256 arm:   "a0a4701568e9936cdc1f1a3126751013dbcf42ab8c757568fc819d13a255b02e",
         intel: "b891b7c6f3e31e1213e6f132208b06b463919a0cfc21e54625a98bf1a1b4995b"

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
