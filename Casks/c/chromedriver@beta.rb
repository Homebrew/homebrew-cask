cask "chromedriver@beta" do
  arch arm: "arm64", intel: "x64"

  version "141.0.7390.7"
  sha256 arm:   "7815a9fa2efc47139803b5e01a1cd70b7ecd542972a1b3ac41877c8c5fd37b39",
         intel: "8773e7122ba4ca5d5f87b6c8c1b5442456dbe3c335cfd8cb8f5c6cd8a52963f9"

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

  binary "chromedriver-mac-#{arch}/chromedriver"

  # No zap stanza required
end
