cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "140.0.7339.82"
  sha256 arm:   "ed461807c7dfa4417b2d5eee58e7a688590d4d6dbcd831b9d1a32e5596a2e67d",
         intel: "f7a3ee24168916d12c3bc597aa8514feb0e306a59d5c9f83920869e4764a2307"

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
