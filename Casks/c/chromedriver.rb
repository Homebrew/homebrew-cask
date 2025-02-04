cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "133.0.6943.53"
  sha256 arm:   "3b53b32ab5b656354798815f30c270654b9c7664af5ba1fd4993f5cb357573b7",
         intel: "19d1aac222bbde1110cdb54b14410ea62ab9a627411895277644c8f0638a5d35"

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
