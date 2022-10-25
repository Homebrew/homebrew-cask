cask "chromedriver" do
  arch arm: "mac_arm64", intel: "mac64"

  version "107.0.5304.62"
  sha256 arm:   "fc409b4a55fdb1c02b7c4c82236b87e35679c43993182d8dd59c798c4231d905",
         intel: "3a1e597791ea186e831911b280620c49381bb59910969cda9a9432f27b2a8d2b"

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
