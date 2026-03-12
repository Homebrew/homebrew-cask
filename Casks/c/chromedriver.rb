cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "146.0.7680.76"
  sha256 arm:   "1213ec50d648b94a16e9f22afad5f5053b39c1f97c4883f6591e881271a62814",
         intel: "c9d387346554d55bd501698ca70d178d7b25f3c362a1e6efca4db10cdb590979"

  url "https://storage.googleapis.com/chrome-for-testing-public/#{version}/mac-#{arch}/chromedriver-mac-#{arch}.zip",
      verified: "storage.googleapis.com/chrome-for-testing-public/"
  name "ChromeDriver"
  desc "Automated testing of webapps for Google Chrome"
  homepage "https://chromedriver.chromium.org/"

  livecheck do
    url "https://googlechromelabs.github.io/chrome-for-testing/last-known-good-versions.json"
    strategy :json do |json|
      json.dig("channels", "Stable", "version")
    end
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  conflicts_with cask: "chromedriver@beta"

  binary "chromedriver-mac-#{arch}/chromedriver"

  # No zap stanza required
end
