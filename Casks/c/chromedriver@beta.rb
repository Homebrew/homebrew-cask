cask "chromedriver@beta" do
  arch arm: "arm64", intel: "x64"

  version "138.0.7204.4"
  sha256 arm:   "291e9d3c98327a34532601e11a6a5842e613fd0f0bd70add3ea1af8ccf26acb8",
         intel: "9823d0e33d930761a9967dce0403a53dc5b2d3376af46cd3e7f10bc28bfe401d"

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

  conflicts_with cask: "chromedriver"

  binary "chromedriver-mac-#{arch}/chromedriver"

  # No zap stanza required
end
