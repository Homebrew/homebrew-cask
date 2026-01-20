cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "144.0.7559.59"
  sha256 arm:   "3b595bdb3d39aa6bf5e2b460737bafbe8cf21db8e58a30fdf87bef3852efd386",
         intel: "f7e9d7f9b8a87bad9d1ee853ac7779cb6bb75de45c5215cacbc000ba9b7de4fd"

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
