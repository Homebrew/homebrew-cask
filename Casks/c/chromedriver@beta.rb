cask "chromedriver@beta" do
  arch arm: "arm64", intel: "x64"

  version "134.0.6998.3"
  sha256 arm:   "55e3f83f0fd947e3319e2a62b7608f9b848b68a99b333a573e4f58fa950188ff",
         intel: "20a1f7b0bbe9d9216551dedcc48007e39691574f844bdfedba14fc15f2b23c09"

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
