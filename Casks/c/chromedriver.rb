cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "140.0.7339.81"
  sha256 arm:   "9c32d765d924f907d9d43a23505192084cb67c3da815d12b38b10adedc819fb9",
         intel: "d43ee4d82d077420309c845a3b2605bb76d7c8bf9573befcbd6d7f746fbb5db4"

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
