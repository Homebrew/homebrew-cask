cask "chromedriver@beta" do
  arch arm: "arm64", intel: "x64"

  version "133.0.6943.35"
  sha256 arm:   "f06a0f5666eb0d86561d0d4f33403c714412296c05649bd8bb80cbffd2ebc2d8",
         intel: "cde4cbf44312d563037b5d1165cf36aab18e19e310ec7cd800f2d6e28e401aaf"

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
