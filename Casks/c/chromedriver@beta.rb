cask "chromedriver@beta" do
  arch arm: "arm64", intel: "x64"

  version "135.0.7049.17"
  sha256 arm:   "cc79dde2fb05bf749e74a0df3e09f40d30407624ba1573b840e05c0a48288181",
         intel: "13b78b1f19895d00e19dbb46d11264d52742832d175081b9d2931d3f71cf7c47"

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
