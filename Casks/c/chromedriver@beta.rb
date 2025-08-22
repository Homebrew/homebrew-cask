cask "chromedriver@beta" do
  arch arm: "arm64", intel: "x64"

  version "140.0.7339.24"
  sha256 arm:   "4a305a5354e0b33f73307f12d28123ebe7ab44ad32e631a2434f08235789939f",
         intel: "1b785a93d4dd848942064268428ca186a122d6a64c5aaf7fe2c6c8b1debcb34f"

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

  disable! date: "2026-09-01", because: :unsigned

  conflicts_with cask: "chromedriver"

  binary "chromedriver-mac-#{arch}/chromedriver"

  # No zap stanza required
end
