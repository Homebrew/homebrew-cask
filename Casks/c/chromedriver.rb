cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "135.0.7049.42"
  sha256 arm:   "a072a9dba97ad4402da0899523d32596632b5f01374d893c9006ca8cb95a9979",
         intel: "dadf62fb94b9407db5e93ee7710ad4afb6b987f061d1b41847c478c78f744e2f"

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
