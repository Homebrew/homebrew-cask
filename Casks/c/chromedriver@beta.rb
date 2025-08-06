cask "chromedriver@beta" do
  arch arm: "arm64", intel: "x64"

  version "140.0.7339.5"
  sha256 arm:   "fa4e9f99085348c374830386755d99c2265fe3585ac8a0ea4558110ebbdfc03b",
         intel: "53ca055ca63400be8a4ca5276308be9c9bcfe6fb12ec583f7981e636191a8792"

  url "https://storage.googleapis.com/chrome-for-testing-public/#{version}/mac-#{arch}/chromedriver-mac-#{arch}.zip",
      verified: "storage.googleapis.com/chrome-for-testing-public/"
  name "ChromeDriver"
  desc "Automated testing of webapps for Google Chrome"
  homepage "https://chromedriver.chromium.org/"

  livecheck do
    url "https://googlechromelabs.github.io/chrome-for-testing/last-known-good-versions.json"
    strategy :json do |json|
      json.dig("channels", "Beta", "version")
    end
  end

  disable! date: "2026-09-01", because: :unsigned

  conflicts_with cask: "chromedriver"

  binary "chromedriver-mac-#{arch}/chromedriver"

  # No zap stanza required
end
