cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "143.0.7499.42"
  sha256 arm:   "90d2ff9d44a5c8203f1b17fc9c1502123554050cb750bdef7850b662473abace",
         intel: "c4e84bd04135cf660017fe11ee1aa2bf8a6dd49c864599a19f9466f574be10a3"

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
