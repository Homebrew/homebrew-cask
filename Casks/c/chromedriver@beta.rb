cask "chromedriver@beta" do
  arch arm: "arm64", intel: "x64"

  version "134.0.6998.15"
  sha256 arm:   "0781710fc5aae527edff4ce994e7acbe03c4547f24919a2496965b4122fb9799",
         intel: "69908f5c6f8c95f5397d73c0147da73d50420568cfabb2e901fc45646bb66f9c"

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
