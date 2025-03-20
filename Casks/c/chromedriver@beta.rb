cask "chromedriver@beta" do
  arch arm: "arm64", intel: "x64"

  version "135.0.7049.28"
  sha256 arm:   "b3fd0bcca6d5b4e946298f2a552211b3e42b774bc28b79b5f78cd5262707d2ca",
         intel: "45f7d30c1345f1edbdf300e165ad969a0894fc026a38fb848084e1cf7a38fbe6"

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
