cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "131.0.6778.69"
  sha256 arm:   "05bb13e90bb2803fd26a8ccaf752715cd0c6a0521235da952e1cb2c733689e73",
         intel: "92583e52f601951d3e0849891239bb2f6ff00dd8f8fd6c908473cc21c0533dd2"

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
