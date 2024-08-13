cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "127.0.6533.119"
  sha256 arm:   "abad0d58891add0ccbb168375fffaa4d66f2e944dfef0be30837595a5523ccf0",
         intel: "cfed3c4750988b9dde74d1034af277d37fa173fa6a885bd5854903fa0e2aead1"

  url "https://storage.googleapis.com/chrome-for-testing-public/#{version}/mac-#{arch}/chromedriver-mac-#{arch}.zip",
      verified: "storage.googleapis.com/chrome-for-testing-public/"
  name "ChromeDriver"
  desc "Automated testing of webapps for Google Chrome"
  homepage "https://chromedriver.chromium.org/"

  livecheck do
    url "https://googlechromelabs.github.io/chrome-for-testing/last-known-good-versions-with-downloads.json"
    regex(/v?(\d+(?:\.\d+)+)/i)
    strategy :json do |json, regex|
      json.dig("channels", "Stable", "version")&.scan(regex) { |match| match[0] }
    end
  end

  conflicts_with cask: "chromedriver@beta"

  binary "chromedriver-mac-#{arch}/chromedriver"

  # No zap stanza required
end
