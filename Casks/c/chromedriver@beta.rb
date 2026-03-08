cask "chromedriver@beta" do
  arch arm: "arm64", intel: "x64"

  version "146.0.7680.65"
  sha256 arm:   "bb67f30ddad7ae53921c8e7e61d694ae306d048f1c0481c4c86cc190354a4e73",
         intel: "2579d04fd47d4f1e7deea6cb97c0b620b310c1665fa27def5ed294f2b50aaec8"

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
