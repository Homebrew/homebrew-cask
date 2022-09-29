cask "chromedriver" do
  arch arm: "mac_arm64", intel: "mac64"

  version "106.0.5249.61"
  sha256 arm:   "57b575fa67adaf3a35770aabe3fba0fe3a3996f7faf7c70cf19f5a42346871db",
         intel: "0a43128e9eb990bdf9c7445cb80c70cf8a9686778a07bbbc8164c8515334671e"

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
