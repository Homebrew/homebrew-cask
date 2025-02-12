cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "133.0.6943.98"
  sha256 arm:   "c993196006f7dc9fe9401aac761a34a41f87b3117134fa320fe1c27d34beed84",
         intel: "f026a658f8dc5a4e199a0932083f7a56d49eb1ae0afc565ef14be8db68d9dc75"

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
