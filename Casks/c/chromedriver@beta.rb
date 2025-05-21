cask "chromedriver@beta" do
  arch arm: "arm64", intel: "x64"

  version "137.0.7151.40"
  sha256 arm:   "df2f96568e31b5733bcecfc5f4c1f2f506e9f63ee151e01cef9f7f8cb6bf7c85",
         intel: "c3c7cd781b217694ce35b9b7e2f3c3d214982a023a0c1a21dae4af320e409928"

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
