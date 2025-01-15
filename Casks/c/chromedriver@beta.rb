cask "chromedriver@beta" do
  arch arm: "arm64", intel: "x64"

  version "133.0.6943.16"
  sha256 arm:   "329e2645ff29b5af42ff766905337bd499d05b9febdc662105d87c6f74f48160",
         intel: "b9f5f4c9c1521bcf8ff9ea561f3b5fc3550f5d3e4f1875da17ee44fc3d7068ef"

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
