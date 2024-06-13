cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "126.0.6478.61"
  sha256 arm:   "3834787c55b6e32878bc819c5a30551fe99f2be2c4094fcb5e5595abe3413652",
         intel: "3af4643bf9815ce93722a66dbe32b33ac04f05a673abe60e6fffd2b17b6007d9"

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

  conflicts_with cask: "chromedriver@beta"

  binary "chromedriver-mac-#{arch}/chromedriver"

  # No zap stanza required
end
