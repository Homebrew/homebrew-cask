cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "136.0.7103.49"
  sha256 arm:   "cd2ab3863079ba07b2a68ddba00d711ccd16c8e52825c52927a95e6b949c5072",
         intel: "ba9ce908dc76c0ae6a3ac9976a0f820247e48fca2b0c9a183dfed901ed16f157"

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

  conflicts_with cask: "chromedriver@beta"

  binary "chromedriver-mac-#{arch}/chromedriver"

  # No zap stanza required
end
