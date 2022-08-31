cask "chromedriver" do
  arch arm: "mac64_m1", intel: "mac64"

  version "105.0.5195.52"
  sha256 arm:   "7e851af7aef841f5a4c231e089db29be700b1daca3ddc71368d51c2634c96593",
         intel: "c0e2982c36f02216a4eaaaff2672b6aa702bbc2b904b00e4ca736c708b784867"

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
