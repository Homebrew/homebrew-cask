cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "147.0.7727.56"
  sha256 arm:   "19ed9b91280710b89f5f677c4829cb975998ed935000d8241b84b177380ca525",
         intel: "f56cf6b9cea96fcd1ca0ece7cd928713ededa9e19b6ac2bc4e5d193f74efba4b"

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
