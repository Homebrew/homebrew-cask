cask "chromedriver" do
  arch arm: "mac_arm64", intel: "mac64"

  version "108.0.5359.71"
  sha256 arm:   "e62ad8b5ef5004937b8ac6e647d7777165074818376a9978f0bb878d5bb82b23",
         intel: "91290ddc0011effc661462ec73dec7a7b3cf15b7279c77233cd8cd4e312a7492"

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
