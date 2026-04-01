cask "chromedriver@beta" do
  arch arm: "arm64", intel: "x64"

  version "147.0.7727.49"
  sha256 arm:   "942335ecd4186d43b90473a76cda7f2cecf56391a45927e71c6e58d6f395f564",
         intel: "265ff6cc9d1a45ef6125b7ad92edaf25a698bcce739bf27d499d9177c9fa65fe"

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
