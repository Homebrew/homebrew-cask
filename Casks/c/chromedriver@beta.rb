cask "chromedriver@beta" do
  arch arm: "arm64", intel: "x64"

  version "147.0.7727.24"
  sha256 arm:   "76cc4a27016387fbe8fa0905bd73e1c715905b6f1240053103299ee293cfde9c",
         intel: "c1f1520e8ea57b8c49f18310448929ca4503df596df76415a748ddeeaabe6d7d"

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
