cask "chromedriver@beta" do
  arch arm: "arm64", intel: "x64"

  version "146.0.7680.0"
  sha256 arm:   "563ee276263dbe994fd3c520bb8eca397bc5282060b634b39f24c6b8d57b64c2",
         intel: "5f9ed179251a18320f13b312a5208e9b5eb176f0a7d67d83ae7ccd8d56857eda"

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
