cask "chromedriver@beta" do
  arch arm: "arm64", intel: "x64"

  version "141.0.7390.30"
  sha256 arm:   "5acec825956c928e86f1e0ba89017ffd85a3a6c235bc9bc10a5770c24fc06e13",
         intel: "9e55df2791c5ec4d5524602c2f385a1a4e4dc4873de3874146420fe3ec6c9ffe"

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
