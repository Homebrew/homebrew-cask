cask "chromedriver@beta" do
  arch arm: "arm64", intel: "x64"

  version "150.0.7871.24"
  sha256 arm:   "03752856ac1110feb59bebee6fb85158361772c544f43449e58fa24e72f45e8f",
         intel: "07e8b8d4acef19b4381e5ed38bb83c064caea9afa4420d0628271258a1847085"

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
