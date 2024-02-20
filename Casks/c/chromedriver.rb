cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "122.0.6261.57"
  sha256 arm:   "645f277c05d7f7d238c7a45412f42489767f48cba05d8632ce00b54b3704d4e1",
         intel: "31d9be68e77c733357ee825c34249dbb94c5c08961e58dfb38b7623e9383fa69"

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
