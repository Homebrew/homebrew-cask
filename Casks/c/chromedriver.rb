cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "130.0.6723.93"
  sha256 arm:   "fc032fcd92c378adc42bff0f9e558e2001b4bff77a9bac9b9ac089a9b39a79de",
         intel: "3e4ae033a09ca5a5e07ec2fa0c5472f0f58db8ee7a0540c049709a74b0e7163a"

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
