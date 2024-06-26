cask "chromedriver@beta" do
  arch arm: "arm64", intel: "x64"

  version "127.0.6533.26"
  sha256 arm:   "78c0aa80c41716987f4c57f868bc067004141d38866fbc59ef0293689ab13f85",
         intel: "1e51fb49109981031dc3f9f5cff1d176c3a06c8134bfd8ba356e55351035bab6"

  url "https://storage.googleapis.com/chrome-for-testing-public/#{version}/mac-#{arch}/chromedriver-mac-#{arch}.zip",
      verified: "storage.googleapis.com/chrome-for-testing-public/"
  name "ChromeDriver"
  desc "Automated testing of webapps for Google Chrome"
  homepage "https://chromedriver.chromium.org/"

  livecheck do
    url "https://googlechromelabs.github.io/chrome-for-testing/last-known-good-versions-with-downloads.json"
    regex(/v?(\d+(?:\.\d+)+)/i)
    strategy :json do |json, regex|
      json["channels"]["Beta"]["version"]&.scan(regex) { |match| match[0] }
    end
  end

  deprecate! date: "2025-05-01", because: :unsigned

  conflicts_with cask: "chromedriver"

  binary "chromedriver-mac-#{arch}/chromedriver"

  # No zap stanza required
end
