cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "138.0.7204.49"
  sha256 arm:   "dc64ab4843ea298f02cd69e2995b7441544d4132b74ac97e14a596eaaf1cd697",
         intel: "bff1fc6075912698a1699a8d0979da3fdc576775a3fe78e6ae68338459c8882f"

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
