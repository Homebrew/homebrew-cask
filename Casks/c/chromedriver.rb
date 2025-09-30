cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "141.0.7390.54"
  sha256 arm:   "8bb230583fe2e235c02575b8503e8635125cbe86882739b15d1460ee101b80d8",
         intel: "1140ed8fa9408c09968823ce20703b1303500789b6ce334056635eb477591dca"

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
