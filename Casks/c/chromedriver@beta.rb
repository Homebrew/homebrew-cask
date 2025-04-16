cask "chromedriver@beta" do
  arch arm: "arm64", intel: "x64"

  version "136.0.7103.33"
  sha256 arm:   "023dee5ff8dedec41712cf597273cff12d78800c4d4f06a890a2537dfd82ee01",
         intel: "588db42dc9c8b164d90646954ee975f1bf9351cf4edfc7846a4ffd396e8716a4"

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
