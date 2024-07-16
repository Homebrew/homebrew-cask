cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "126.0.6478.127"
  sha256 arm:   "5e3afcc2923698f6f87738f84eb86def26017f35eb58b836dff6c1e15e3dbb9c",
         intel: "69b3332f1e3e4686e9a9f59ba61e3cdca912cd1ae82e3b51b1a6370c7012f644"

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
