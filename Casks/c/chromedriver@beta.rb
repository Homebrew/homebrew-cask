cask "chromedriver@beta" do
  arch arm: "arm64", intel: "x64"

  version "136.0.7103.17"
  sha256 arm:   "1555ca0dfdeb5472101ce37a99dfa0e8e6da8ed9ed6b22e93964c4ceb0e9d26a",
         intel: "93ed680b71351864372649bee8e8c8ad4451e910ef5ab092698a9d611c13cb96"

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
