cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "131.0.6778.87"
  sha256 arm:   "dc9b84f679e3fb4bf077b74c12209c8e5d5b7850e11d8f12c262768b80e7ffb1",
         intel: "9fa91a7b7e969cbd6edb089e14b8db2189353519640dcc84c067369918bfb04f"

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
