cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "142.0.7444.61"
  sha256 arm:   "90645cae0a3b768c35202742e8fc07d08ac64470bbadbd4ad0dc07903b839199",
         intel: "a81e892eb66e0b393387c98446e58da65615667c5f0aeb6a8d4dd94f7d60c95f"

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

  binary "chromedriver-mac-#{arch}/chromedriver"

  # No zap stanza required
end
