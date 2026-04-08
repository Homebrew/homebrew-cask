cask "chromedriver@beta" do
  arch arm: "arm64", intel: "x64"

  version "148.0.7778.5"
  sha256 arm:   "49e608a2597cb6148c688d45afa8b06a2713d40c380172312e6d298af31eabd0",
         intel: "365d84dcb5b3d5a2cfe6546a7460a0dfa0795d2deda3d69505a4186331dc08e4"

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
