cask "chromedriver" do
  version "87.0.4280.20"
  sha256 "99e98317a5f883d53973a044778f81abe71b42c570fb35f75786f86ea617bd1a"

  url "https://chromedriver.storage.googleapis.com/#{version}/chromedriver_mac64.zip",
      verified: "chromedriver.storage.googleapis.com/"
  appcast "https://chromedriver.storage.googleapis.com/LATEST_RELEASE"
  name "ChromeDriver"
  desc "Automated testing of webapps for Google Chrome"
  homepage "https://sites.google.com/a/chromium.org/chromedriver/home"

  conflicts_with cask: "homebrew/cask-versions/chromedriver-beta"

  binary "chromedriver"
end
