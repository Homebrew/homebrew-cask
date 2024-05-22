cask "chromedriver@beta" do
  arch arm: "arm64", intel: "x64"

  version "126.0.6478.17"
  sha256 arm:   "13cd318c5d215e8cb9f1e5c4c64cc3ae91156bd1a49504380c1e8a6f91a02ade",
         intel: "f3eaf338f13777ec0c58ee7a9f41a896bb678374c8bc7bdff444afa8821c9b1f"

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
