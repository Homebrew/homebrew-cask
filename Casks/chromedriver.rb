cask "chromedriver" do
  arch = Hardware::CPU.intel? ? "mac64" : "mac64_m1"

  version "103.0.5060.53"

  if Hardware::CPU.intel?
    sha256 "17b8dabdefd001e8b5a87041b5394fec58f9fcb9cdd85a0598b58ebc3c882b0e"
  else
    sha256 "8d412f561e71c0038f59bd27604c5cbcff5fc228f731e83725382c31a2126b8d"
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
