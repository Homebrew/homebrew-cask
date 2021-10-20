cask "chromedriver" do
  arch = Hardware::CPU.intel? ? "mac64" : "mac64_m1"

  version "95.0.4638.17"

  url "https://chromedriver.storage.googleapis.com/#{version}/chromedriver_#{arch}.zip",
      verified: "chromedriver.storage.googleapis.com/"
  if Hardware::CPU.intel?
    sha256 "88821a2f7eade0d6489d10b1aa90684e8b7511900709f2a42d7fe08e441c876e"
  else
    sha256 "d6a04a2ae132fce35c2d6243c260c60efcc1076157045436a55f0ee4302558a5"
  end

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
