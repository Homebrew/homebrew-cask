cask "chromedriver@beta" do
  arch arm: "arm64", intel: "x64"

  version "132.0.6834.57"
  sha256 arm:   "83d1278481d557b43c101c839c72a6e3f4e7be5182b1342c2effd5efde95d360",
         intel: "25b78d0d6a5a1f6d5f2e990a546703ddf76eda4ee9e527fd5c061032a487664b"

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
