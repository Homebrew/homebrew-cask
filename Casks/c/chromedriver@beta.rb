cask "chromedriver@beta" do
  arch arm: "arm64", intel: "x64"

  version "139.0.7258.52"
  sha256 arm:   "4374f53a4eb2f6164edb500077c5ba66784a46197fc874f8ad5c0d91afad09dd",
         intel: "c25afc33fbb50d8809a85e157105a79c8bac8994a472d3c040639b5baf8fd913"

  on_intel do
    disable! date: "2026-09-01", because: :unsigned
  end

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

  conflicts_with cask: "chromedriver"

  binary "chromedriver-mac-#{arch}/chromedriver"

  # No zap stanza required
end
