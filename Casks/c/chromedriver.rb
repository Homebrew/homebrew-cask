cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "137.0.7151.119"
  sha256 arm:   "dbb01e0ac438d29cfbfeffbf0321e07afb099edc4a472ecedaa55202da5385fe",
         intel: "3502bec185bbb2732f21648d02ed3ac3c478ddfa35f3deddc9cc1433335309b7"

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
