cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "131.0.6778.204"
  sha256 arm:   "9bb29c1b138a0905619de546a58bc812e40082790b9da92bc0c31546097374aa",
         intel: "5dcaf1bbc39d06eb7c2b5a8a2c43946d6d785648e1b392267790d11bc5a119d9"

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
