cask "chromedriver@beta" do
  arch arm: "arm64", intel: "x64"

  version "148.0.7778.40"
  sha256 arm:   "adbd6c02227fa9a4ec2e076740482f9ab35fb14cdb0e61dfdb2e4e06eb741e47",
         intel: "a85b5bf21a84f22f50dad6da70c2ea60c6c5b7210eaecaa4032b6be86c90bc7b"

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
