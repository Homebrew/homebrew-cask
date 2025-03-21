cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "134.0.6998.165"
  sha256 arm:   "75e95741d120626ea3fa4ac975e7415cb55aa784a7e8e6c27c5255e43545c991",
         intel: "4e5ff9ecbe1586e4820784e532b25c33eec0304f7699919d59d2888a4f49b95c"

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
