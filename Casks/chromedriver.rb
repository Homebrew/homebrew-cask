cask "chromedriver" do
  arch arm: "mac_arm64", intel: "mac64"

  version "111.0.5563.64"
  sha256 arm:   "ec65b47e99b474a74a9a12a1986c00ba614019523a698012cbdc0cb9e23af67b",
         intel: "0edd1b537f52ac19c32c0e63a7e6b2c7d3d6de509671f42b2c2d72d2ccb8ed47"

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
