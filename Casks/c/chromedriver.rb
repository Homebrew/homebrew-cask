cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "122.0.6261.94"
  sha256 arm:   "19cd0e5c6eddc7932fcb4680b27a95209b4f14af0e62616bf0e7f2f945da70ce",
         intel: "8afdfbd01607f07a1b5317986ec578fc0e89c991b67de12e55b2422d565cdce8"

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
