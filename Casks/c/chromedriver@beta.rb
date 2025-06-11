cask "chromedriver@beta" do
  arch arm: "arm64", intel: "x64"

  version "138.0.7204.23"
  sha256 arm:   "8042b66a259705b25a2f0e45bdbf00e453a2213a0717a185b762ae5daa1871fc",
         intel: "95f32d1bd12f2cc9ab19d53c4050fd7da45a9700935b96811354d25a31b9a9f7"

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

  conflicts_with cask: "chromedriver"

  binary "chromedriver-mac-#{arch}/chromedriver"

  # No zap stanza required
end
