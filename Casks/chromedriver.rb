cask "chromedriver" do
  arch arm: "mac_arm64", intel: "mac64"

  version "109.0.5414.74"
  sha256 arm:   "604df6f926218a267b3f42a8f9b945d510df6a5821e39772a48c6046da14ab2a",
         intel: "a0dad15fab5c00f8b09d8a2b04eddb8915b3457b5c5aa77177399e5a40eb8670"

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
