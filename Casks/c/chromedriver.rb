cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "138.0.7204.168"
  sha256 arm:   "c64e1ad395a310c8db4926b335618ef32a03acdc6c69a29d61f0146486b6dc13",
         intel: "26fc85d280f5563a08e736e99fcdbd98f817ac80d6c032c4afdf89f32257ce75"

  on_intel do
    disable! date: "2026-09-01", because: :unsigned
  end

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

  conflicts_with cask: "chromedriver@beta"

  binary "chromedriver-mac-#{arch}/chromedriver"

  # No zap stanza required
end
