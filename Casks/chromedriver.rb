cask "chromedriver" do
  arch = Hardware::CPU.intel? ? "mac64" : "mac64_m1"

  version "95.0.4638.69"

  if Hardware::CPU.intel?
    sha256 "7d70a8c0441ef9b572ac17ecbb2f1976a1689b2ed04aebb7e5586fe097ddf830"
  else
    sha256 "11b8e73ea5c1a01a17ae484c63155fb5a9674a3799c0225184aec305a5f705fe"
  end

  url "https://chromedriver.storage.googleapis.com/#{version}/chromedriver_#{arch}.zip",
      verified: "chromedriver.storage.googleapis.com/"
  name "ChromeDriver"
  desc "Automated testing of webapps for Google Chrome"
  homepage "https://sites.google.com/chromium.org/driver/"

  livecheck do
    url "https://chromedriver.storage.googleapis.com/LATEST_RELEASE"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  conflicts_with cask: "homebrew/cask-versions/chromedriver-beta"

  binary "chromedriver"
end
