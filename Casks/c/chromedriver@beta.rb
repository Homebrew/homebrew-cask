cask "chromedriver@beta" do
  arch arm: "arm64", intel: "x64"

  version "142.0.7444.34"
  sha256 arm:   "eb8c32d19b7cf56fbb8aa5e1f1cf57170787d3eda59b9d4b6c7b93f09428bd92",
         intel: "840101066642b930b937ba5e8d7506d9a71bbb6a9a45b5a4c11c05d83aace12c"

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
