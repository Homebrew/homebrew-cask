cask "chromedriver@beta" do
  arch arm: "arm64", intel: "x64"

  version "147.0.7727.15"
  sha256 arm:   "1c039d14c95c3aac4e747a6d804cd298cf37ce59e6c7da2898651be3a0abe042",
         intel: "8592dcbd95a7f7f11cb4c583c7a3859582691d3563e143d3b5791a7f3d809230"

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
