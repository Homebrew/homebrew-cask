cask "chromedriver@beta" do
  arch arm: "arm64", intel: "x64"

  version "138.0.7204.35"
  sha256 arm:   "b3e8e7c75de44c91a829d842564b9e617b9baf60a13b914a52d41e83565b4b24",
         intel: "b9863dc8e00469b5eb74be7472653694c9fd6943e3e47ec9e1b00c93c9fb68a6"

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
