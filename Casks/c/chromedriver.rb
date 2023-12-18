cask "chromedriver" do
  arch arm: "arm64", intel: "x64"

  version "120.0.6099.71"
  sha256 arm:   "51504b0a8f0b91b9edf3cd8f7933273bc9716a6e369880e410ddbc3ecf04d1af",
         intel: "4e1b0a38e2cd7261535272e2ad21de6bdc33c3e1720b7bfb23fe6085bcfc1808"

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
