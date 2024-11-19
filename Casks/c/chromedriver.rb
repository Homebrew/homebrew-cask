cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "131.0.6778.85"
  sha256 arm:   "70dac0b5fd1ba5a44679741dee6e50374a4e61cee6b97edfd3db5294947cdffa",
         intel: "ee194eba1d52dea61dfbf08b05a2ce139660e9c7d20d15024c3a0757ac4a5fcb"

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
