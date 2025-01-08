cask "chromedriver@beta" do
  arch arm: "arm64", intel: "x64"

  version "132.0.6834.83"
  sha256 arm:   "c7ebaade8cc1096bbc15bae6c14816bbfd5bef0b36a3018019694bb2498a7127",
         intel: "5a4a646a6a2b41ff0453a598a874cb26fe197e2544e7f35cfb2b2fe410098e2d"

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
