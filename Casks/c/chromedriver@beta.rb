cask "chromedriver@beta" do
  arch arm: "arm64", intel: "x64"

  version "153.0.8010.5"
  sha256 arm:   "432ec376318fe9fbe2981248acd05c073fbfb1aee5d5524d43b46a1393a45db5",
         intel: "4118c3be4e796c13fada46167504505272d22c24247cc622a0a35e9aa9c5aa68"

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
