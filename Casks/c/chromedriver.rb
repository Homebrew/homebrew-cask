cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "126.0.6478.63"
  sha256 arm:   "e27776f7e0b0d1a1b1640e0a038acdcf9a6b662c09b9624d037122d295eb361c",
         intel: "f4e3ba73d6a1b4472ead604c46d28f16289833dcff7338751768cf06ff8f8165"

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

  conflicts_with cask: "chromedriver@beta"

  binary "chromedriver-mac-#{arch}/chromedriver"

  # No zap stanza required
end
