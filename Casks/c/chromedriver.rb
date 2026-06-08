cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "149.0.7827.54"
  sha256 arm:   "58cb81188172ecf2db41f7704538942017ebc9e1bdb822151f9721c7066849c2",
         intel: "dd2f9caea4bafcdc342f02ef318715351593f0c563912442dd44e41d9ab2887c"

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
  depends_on :macos

  binary "chromedriver-mac-#{arch}/chromedriver"

  # No zap stanza required
end
