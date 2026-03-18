cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "146.0.7680.153"
  sha256 arm:   "5a85fa55c4c512a45bd6e108585ec88df9c47a90e90681ef59117b0b5706cc9b",
         intel: "bd30b7c8d67280f3f9f1185cda74766d4c9d03600310450fb67755879f482c14"

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
