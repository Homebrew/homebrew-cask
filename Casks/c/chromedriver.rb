cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "135.0.7049.84"
  sha256 arm:   "50fb2da54c81d407da1157317d57a9d168cadcca9c042bf672355944b865264e",
         intel: "9f8c1d5b86d34c3fa392a651075977050a8f31a583ce10160d92946e56f3f197"

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
