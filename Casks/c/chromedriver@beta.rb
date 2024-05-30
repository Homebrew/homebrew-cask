cask "chromedriver@beta" do
  arch arm: "arm64", intel: "x64"

  version "126.0.6478.26"
  sha256 arm:   "0f6511f7ab5cb8d684b2c6a41d57aad6403f115bfbbece8e3d02fbdb6e45b7c4",
         intel: "555f50e6fc5c24fdbbcea5a29b08cbe42479d3ece44da864553950e421dc8728"

  url "https://storage.googleapis.com/chrome-for-testing-public/#{version}/mac-#{arch}/chromedriver-mac-#{arch}.zip",
      verified: "storage.googleapis.com/chrome-for-testing-public/"
  name "ChromeDriver"
  desc "Automated testing of webapps for Google Chrome"
  homepage "https://chromedriver.chromium.org/"

  livecheck do
    url "https://googlechromelabs.github.io/chrome-for-testing/last-known-good-versions-with-downloads.json"
    regex(/v?(\d+(?:\.\d+)+)/i)
    strategy :json do |json, regex|
      json["channels"]["Beta"]["version"]&.scan(regex) { |match| match[0] }
    end
  end

  deprecate! date: "2025-05-01", because: :unsigned

  conflicts_with cask: "chromedriver"

  binary "chromedriver-mac-#{arch}/chromedriver"

  # No zap stanza required
end
