cask "chromedriver@beta" do
  arch arm: "arm64", intel: "x64"

  version "150.0.7871.4"
  sha256 arm:   "31a80390279ed92be1f74c07b05034e3e88f347a0e953a981355a16f7a1b64f5",
         intel: "b141d050b6fd4f97d0273ad97276e005710124c4c7cfb38bbf3b48ae38cd9d23"

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
