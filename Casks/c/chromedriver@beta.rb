cask "chromedriver@beta" do
  arch arm: "arm64", intel: "x64"

  version "142.0.7444.3"
  sha256 arm:   "2a1a884eca178c467b195521e9a228ef38c91b5cb43eec07710a9bcced641cef",
         intel: "1f293e064e9677ee5bafab661170ae1bda2eb5e80fe1f0e5ead1ac033af0d237"

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
