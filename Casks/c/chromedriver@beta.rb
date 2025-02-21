cask "chromedriver@beta" do
  arch arm: "arm64", intel: "x64"

  version "134.0.6998.23"
  sha256 arm:   "75ad31f29d16443059c32f3f681acd7b18e220f3d3bc584d4bcc265d3521423a",
         intel: "f98c0e4b9a53248f274ac9cc47cea7f27c1aef827f0527ca80bc4c04bc1da886"

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
