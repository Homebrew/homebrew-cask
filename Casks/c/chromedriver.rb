cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "138.0.7204.94"
  sha256 arm:   "934f1b98c68492f29fd0af0620ddb9cf1673189105306a1c934733882a8bf2f9",
         intel: "3330c58df57b75b166286aac87ce2da2587d2cb6789eb7423551391c4f489e51"

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
