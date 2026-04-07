cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "147.0.7727.55"
  sha256 arm:   "5cecdc4959121d3ac91a0ec1dc2b24cdd02af116f3dee82144a7362b8ad77231",
         intel: "77ff5a53eef482411c9ad4910c4d6d795a7f5ccdc27d346edacbd405f07738db"

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
