cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "122.0.6261.111"
  sha256 arm:   "fcc92add3a93d86aca7e2e12e7dd0375a1988faf9216bd2a2c57290d4b2e3bf8",
         intel: "16d7e9b92808cd8193fb00ded4c805744bfe0f89cbb647b3ddd1450226ec9212"

  url "https://storage.googleapis.com/chrome-for-testing-public/#{version}/mac-#{arch}/chromedriver-mac-#{arch}.zip",
      verified: "storage.googleapis.com/chrome-for-testing-public/"
  name "ChromeDriver"
  desc "Automated testing of webapps for Google Chrome"
  homepage "https://chromedriver.chromium.org/"

  livecheck do
    url "https://googlechromelabs.github.io/chrome-for-testing/last-known-good-versions-with-downloads.json"
    regex(/v?(\d+(?:\.\d+)+)/i)
    strategy :json do |json, regex|
      json["channels"]["Stable"]["version"]&.scan(regex) { |match| match[0] }
    end
  end

  conflicts_with cask: "chromedriver-beta"

  binary "chromedriver-mac-#{arch}/chromedriver"

  # No zap stanza required
end
