cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "139.0.7258.138"
  sha256 arm:   "b9462eb3c32967fb5af5619a0fce258d2228a107787de157fc0197d264efec4a",
         intel: "c6e2a630d72e0017649d54f29a93caa617fac0f846c23b2bd6494d8fe92e4479"

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

  disable! date: "2026-09-01", because: :unsigned

  conflicts_with cask: "chromedriver@beta"

  binary "chromedriver-mac-#{arch}/chromedriver"

  # No zap stanza required
end
