cask "chromedriver@beta" do
  arch arm: "arm64", intel: "x64"

  version "137.0.7151.6"
  sha256 arm:   "d988b339f293b2772f1070288e667b381138c654e90b47936b28f866338aaf76",
         intel: "d01e48e534b48ab1f6401642720eec95773b069ad8a3042969d1fd708a4fb6c2"

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
