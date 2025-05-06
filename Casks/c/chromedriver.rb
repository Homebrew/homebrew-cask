cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "136.0.7103.92"
  sha256 arm:   "00c0e1a7ceaf22ae95a5f6ebcdda5e11519f17082d77db8b9622bdbd80259324",
         intel: "3c8ef934f9a37f23081f24fc4354ea37ad08202cc3cca157380bf6524c5bc6ec"

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

  conflicts_with cask: "chromedriver@beta"

  binary "chromedriver-mac-#{arch}/chromedriver"

  # No zap stanza required
end
