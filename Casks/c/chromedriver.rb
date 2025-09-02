cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "140.0.7339.41"
  sha256 arm:   "1608aa53c86a50fc1779ff78aded024403ae1433ec43a5de7772bb68a210e0ef",
         intel: "41564b70d5aa47ca4af21d68e764d413d69c6c99d2e9dc605154aee451bedceb"

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
