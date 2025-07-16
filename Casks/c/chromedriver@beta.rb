cask "chromedriver@beta" do
  arch arm: "arm64", intel: "x64"

  version "139.0.7258.42"
  sha256 arm:   "b40f7af075c4b5a0aa2d1f1ff2b5fd2518c4d4aefc39d32afb0c8d77ec9b121f",
         intel: "6a2507dedda1f760a45f02923db171aafff9bdb43de2fb6a026b6ea5a7ab2c21"

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
