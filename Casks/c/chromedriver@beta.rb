cask "chromedriver@beta" do
  arch arm: "arm64", intel: "x64"

  version "152.0.7977.13"
  sha256 arm:   "d913610a751147faedc996391546310627deb5e27014efb6dc9dd4e50ba19f82",
         intel: "c093d9523bc3dddf422058d260567aa27917a34acbec0a314eaed4fe1daafd9c"

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
  depends_on :macos

  binary "chromedriver-mac-#{arch}/chromedriver"

  # No zap stanza required
end
