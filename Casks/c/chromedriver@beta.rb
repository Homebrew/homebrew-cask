cask "chromedriver@beta" do
  arch arm: "arm64", intel: "x64"

  version "141.0.7390.16"
  sha256 arm:   "18cb3df602a5dbd225497b3ff97c86f764487bdf76bc892bc011f1ffc3e93224",
         intel: "76b7a6239d4d32f2ef75e0a1d6749b7de89dbe14589ffdd3b3c5bf7c32efbaf6"

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
