cask "chromedriver@beta" do
  arch arm: "arm64", intel: "x64"

  version "145.0.7632.5"
  sha256 arm:   "b951c8a5af38f43f2693f32f0ed7e9a72694206f04fda8af7a6384f1f91e2928",
         intel: "4538d34afcc779620b15c7ecb978ce21c818049004b2f1cbd6fda47855415592"

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

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  conflicts_with cask: "chromedriver"

  binary "chromedriver-mac-#{arch}/chromedriver"

  # No zap stanza required
end
