cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "135.0.7049.97"
  sha256 arm:   "2fd091ce259bfb2f415bd648fa72277da90bd6eb85c5f15ecf5aa3588109c6e0",
         intel: "2eedf6406ca4e9f11a4c196ce56e8d25c15dc68bd8ea07c7da8423d2327e9aa1"

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
