cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "115.0.5790.170"
  sha256 arm:   "19de630ec4260b570d5edf099789272e17af556b9284d6da915170a47d61ef97",
         intel: "2b765fde5547210d765af34f1517f7d073e61f4c113702ab68bd96d95e58dd3f"

  url "https://edgedl.me.gvt1.com/edgedl/chrome/chrome-for-testing/#{version}/mac-#{arch}/chromedriver-mac-#{arch}.zip",
      verified: "edgedl.me.gvt1.com/edgedl/chrome/chrome-for-testing/"
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

  conflicts_with cask: "homebrew/cask-versions/chromedriver-beta"

  binary "chromedriver-mac-#{arch}/chromedriver"

  # No zap stanza required
end
