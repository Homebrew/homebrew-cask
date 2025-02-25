cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "133.0.6943.141"
  sha256 arm:   "b72a618ac15de86cb622421b5442056bf4c19a79d834a2894c2c390b54aba3de",
         intel: "d1964c4b4381c76367af53ce87d304e1586bf7d0d767b7ceef86cb651120c4eb"

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
