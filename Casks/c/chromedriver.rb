cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "123.0.6312.86"
  sha256 arm:   "b229321901b4635e1e3634f77ff679d1c3e69b7f13e7c5fbcd0206a295ce1ceb",
         intel: "b01ea01f9939ccad4821cb414d7429c658262c4a086ad70b0d83be58815a6310"

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
