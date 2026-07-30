cask "chromedriver@beta" do
  arch arm: "arm64", intel: "x64"

  version "152.0.7977.8"
  sha256 arm:   "39fa1eb272ce2d6cb98515b01e5d1775ff0d66922f72663a75d982045cdd19f6",
         intel: "a564fc8b5416173c67341cd136a52d56ee6f1440c7f1825371e024dba4c3ffd2"

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
