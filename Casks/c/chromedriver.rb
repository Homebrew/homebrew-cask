cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "142.0.7444.175"
  sha256 arm:   "300de6ec605f161ab8a334dd239a5135d539347fc6745f802c881cb6e5091ebc",
         intel: "40bf1e10a4722a6fe7c40aeed14f530fcd08a8ce0d7a04df393ac35f9bde1ae8"

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
