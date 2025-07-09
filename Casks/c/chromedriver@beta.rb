cask "chromedriver@beta" do
  arch arm: "arm64", intel: "x64"

  version "139.0.7258.31"
  sha256 arm:   "903f86a3e7378399758a3488ea83ab32b8a2cc2dddd1b52e4ce3802854492c14",
         intel: "e8918cd9835308e6fdf288a8a6e79f12c0df3fb6ebdb9cc16d1fbee64bae1212"

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
