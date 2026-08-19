cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "152.0.7977.54"
  sha256 arm:   "356c29b24a7b6b8f290ad0312b1ccd90e395981dba57be2e0ac18032e977af56",
         intel: "4d8cad2bba79d81eb84146bfb71f90fe65b93679f0317ec7a0a335b43efdd06b"

  url "https://storage.googleapis.com/chrome-for-testing-public/#{version}/mac-#{arch}/chromedriver-mac-#{arch}.zip",
      verified: "storage.googleapis.com/chrome-for-testing-public/"
  name "ChromeDriver"
  desc "Automated testing of webapps for Google Chrome"
  homepage "https://chromedriver.chromium.org/"

  livecheck do
    url "https://googlechromelabs.github.io/chrome-for-testing/last-known-good-versions.json"
    strategy :json do |json|
      json.dig("channels", "Stable", "version")
    end
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  conflicts_with cask: "chromedriver@beta"
  depends_on :macos

  binary "chromedriver-mac-#{arch}/chromedriver"

  # No zap stanza required
end
