cask "chromedriver@beta" do
  arch arm: "arm64", intel: "x64"

  version "135.0.7049.3"
  sha256 arm:   "d6b798a09afc31b5e785a33b4bf0422f7b4e9f584dd2a541b8cb8ef15ed33eea",
         intel: "231285926fa84a6cca21e508d736c85054bef74b4a46dc760bb905bc2d38150c"

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
