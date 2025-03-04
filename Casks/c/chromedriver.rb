cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "134.0.6998.35"
  sha256 arm:   "561e5082d6763293b15cd3366efaca191ddce96878526388ccfb47d5a8ddc6d7",
         intel: "c7110fda39d2f1fea7d7471742a4078fa3f97c54415c410e57afb1c97c8fc93c"

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
