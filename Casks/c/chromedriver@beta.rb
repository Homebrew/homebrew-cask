cask "chromedriver@beta" do
  arch arm: "arm64", intel: "x64"

  version "137.0.7151.32"
  sha256 arm:   "e51be0ca99349f81b3ecf40bfeaa38a90e82eb77a9e2629ab532f59aebe31e70",
         intel: "716cfd6f5c355d390b8af8fb0cdc7ce3873431c54193495ffeb5052b3383fa1b"

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
