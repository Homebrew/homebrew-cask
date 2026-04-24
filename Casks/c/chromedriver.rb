cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "148.0.7778.56"
  sha256 arm:   "18a6d39141a839d59417c8661ce99dc799c1064d961fcc4d7b134a7f00908645",
         intel: "2e78ae274cfce62b2df6d7569c2bf2367de677540ba57ba41a5d9a9510b56147"

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
  depends_on :macos

  binary "chromedriver-mac-#{arch}/chromedriver"

  # No zap stanza required
end
