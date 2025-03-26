cask "chromedriver@beta" do
  arch arm: "arm64", intel: "x64"

  version "135.0.7049.41"
  sha256 arm:   "1164b1efc70c53cda5c3f06724088531591978370eca1eb7b8f7ee0f1b2a95d9",
         intel: "16ff76245d5c45f9e0b16399295b6c3664f2b74381f5d2a059320eed418fe3c4"

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
