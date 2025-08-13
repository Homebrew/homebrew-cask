cask "chromedriver@beta" do
  arch arm: "arm64", intel: "x64"

  version "140.0.7339.16"
  sha256 arm:   "700cef92984e44817e8cd4a4b7b1afec598b1565cc0678610787810e43547e44",
         intel: "931126b95bdaed2ae63001195c8506011d6e7d2554b61462c82e19671602978b"

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
