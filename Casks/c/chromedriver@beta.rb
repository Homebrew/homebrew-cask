cask "chromedriver@beta" do
  arch arm: "arm64", intel: "x64"

  version "146.0.7680.16"
  sha256 arm:   "29c44a53be87fccea4a7887a7ed2b45b5812839e357e091c6a784ee17bb8da78",
         intel: "317cdb925ce677812ff83605ac9f5ed63f1d26467f393385a7801a8cb73022e3"

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

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  conflicts_with cask: "chromedriver"

  binary "chromedriver-mac-#{arch}/chromedriver"

  # No zap stanza required
end
