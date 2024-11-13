cask "chromedriver@beta" do
  arch arm: "arm64", intel: "x64"

  version "132.0.6834.6"
  sha256 arm:   "aaa0b3ac389f7b07ae309cf250305dbff1d5c92ce206083359731e174d50d857",
         intel: "5ee5c99d5e599772eb423d9ad854c331af2bc270a6c5fb553d9fd1c3a5798f9f"

  url "https://storage.googleapis.com/chrome-for-testing-public/#{version}/mac-#{arch}/chromedriver-mac-#{arch}.zip",
      verified: "storage.googleapis.com/chrome-for-testing-public/"
  name "ChromeDriver"
  desc "Automated testing of webapps for Google Chrome"
  homepage "https://chromedriver.chromium.org/"

  livecheck do
    url "https://googlechromelabs.github.io/chrome-for-testing/last-known-good-versions-with-downloads.json"
    regex(/v?(\d+(?:\.\d+)+)/i)
    strategy :json do |json, regex|
      json.dig("channels", "Beta", "version")&.scan(regex) { |match| match[0] }
    end
  end

  deprecate! date: "2025-05-01", because: :unsigned

  conflicts_with cask: "chromedriver"

  binary "chromedriver-mac-#{arch}/chromedriver"

  # No zap stanza required
end
