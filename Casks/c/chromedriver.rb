cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "128.0.6613.119"
  sha256 arm:   "ed3f6e6ab80b497b38baa0664b4d1e50dbe1622038d940bb0cf4e44c8dac33c5",
         intel: "8ea06b129a87463a718bbb29fdd4b3405cd1392db56cf4dfc2f728fd4cca32e8"

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
