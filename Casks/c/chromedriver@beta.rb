cask "chromedriver@beta" do
  arch arm: "arm64", intel: "x64"

  version "136.0.7103.48"
  sha256 arm:   "5a49a1a4ee099fb0b757664a0b6d1cf724efc769e4bf6367b7f6aeb281c5f25f",
         intel: "fe0d84dfed84057df954c609f4cedc7472f2ef763680bda3f30bb97b7502628c"

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
