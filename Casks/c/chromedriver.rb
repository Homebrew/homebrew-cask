cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "131.0.6778.264"
  sha256 arm:   "a495f2bc534453f7a8ab0c21b8233d625751049822c011173a63e255a7c2c529",
         intel: "753d02a4eff922b7dc832f4fe0153b4ae588dd8fb4f9b817b3769973b6df81b1"

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
