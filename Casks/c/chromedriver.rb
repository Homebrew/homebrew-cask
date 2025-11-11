cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "142.0.7444.162"
  sha256 arm:   "2c43bbbff47da92ebe0b739f96c6ed72779c25afdb15ab8d1ae1ae1afbec34a1",
         intel: "551e24a3ea0d40e3de9a89d93373a00e255db1e687c0c45a8fd5fc8761845766"

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
