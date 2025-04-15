cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "135.0.7049.95"
  sha256 arm:   "7d209b4c68c1e5aa23973ef8051aa5a24b7aadc0e78d83f0211ca262f362501c",
         intel: "9bf330af1a080d6bbda6dc80cf064de371941e65b826cfc5a589628d1c78aef9"

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
