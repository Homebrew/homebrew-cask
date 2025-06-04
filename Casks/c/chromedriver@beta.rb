cask "chromedriver@beta" do
  arch arm: "arm64", intel: "x64"

  version "138.0.7204.15"
  sha256 arm:   "0ecbf3f5b5f2f6f853f7fedbc7c4189598d06bb5db6b2c4488bf2897ec681b07",
         intel: "fda50dbab46115e2185cae0f3eeb8526c3f95175b0d4f7f7871aaf1e63590d5c"

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
