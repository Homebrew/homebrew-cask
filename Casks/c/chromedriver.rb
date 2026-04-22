cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "147.0.7727.117"
  sha256 arm:   "83f0d801f86dda924b2700beeb0395ecc9246a3061bb16a43425ddf442a0e757",
         intel: "1e82a8470135814a9121d63112a4d5c3944656073369f91c08fdc52c1c9d6400"

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
