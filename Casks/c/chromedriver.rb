cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "136.0.7103.113"
  sha256 arm:   "8c8a6956b93dc2ccbbc2d1146fa99da0af507c291567d421570e9912e91d2189",
         intel: "171e8df024bb23c9078d971d5f6302a7946b1f53400368b934b1ba1de0074eaa"

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
