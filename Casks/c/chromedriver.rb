cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "131.0.6778.108"
  sha256 arm:   "612909e68f1eef865b837ef9ede7a4f7c8b40f67b6bc7f0f6f2d7499f99ef8e6",
         intel: "4331040cc64c099195c78ed34bf00c3f4a545685c25afa44dd72ed6424809fc5"

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
