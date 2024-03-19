cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "123.0.6312.58"
  sha256 arm:   "4ccade08517d2e8fbd832ee4cd959df4c8dea740986b70b19f892bf413537641",
         intel: "c912db7b7c65d0bfcf7d17150782c0e89783bcba60521b4a66201fc81daffd91"

  url "https://storage.googleapis.com/chrome-for-testing-public/#{version}/mac-#{arch}/chromedriver-mac-#{arch}.zip",
      verified: "storage.googleapis.com/chrome-for-testing-public/"
  name "ChromeDriver"
  desc "Automated testing of webapps for Google Chrome"
  homepage "https://chromedriver.chromium.org/"

  livecheck do
    url "https://googlechromelabs.github.io/chrome-for-testing/last-known-good-versions-with-downloads.json"
    regex(/v?(\d+(?:\.\d+)+)/i)
    strategy :json do |json, regex|
      json["channels"]["Stable"]["version"]&.scan(regex) { |match| match[0] }
    end
  end

  conflicts_with cask: "chromedriver-beta"

  binary "chromedriver-mac-#{arch}/chromedriver"

  # No zap stanza required
end
