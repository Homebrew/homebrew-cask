cask "chromedriver" do
  version "86.0.4240.22"
  sha256 "717ff47c926b6cfa5ebcb60d7cb57a42f338fa657083928d8e1d74ff9c4833dd"

  # chromedriver.storage.googleapis.com/ was verified as official when first introduced to the cask
  url "https://chromedriver.storage.googleapis.com/#{version}/chromedriver_mac64.zip"
  appcast "https://chromedriver.storage.googleapis.com/LATEST_RELEASE"
  name "ChromeDriver"
  homepage "https://sites.google.com/a/chromium.org/chromedriver/home"

  conflicts_with cask: "homebrew/cask-versions/chromedriver-beta"

  binary "chromedriver"
end
