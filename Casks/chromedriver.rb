cask "chromedriver" do
  version "86.0.4240.22"
  sha256 "351ae30e9feab7ca6ccb94a549afcd62d6355561b78b8386cd4271d480a2fdc6"

  # chromedriver.storage.googleapis.com/ was verified as official when first introduced to the cask
  url "https://chromedriver.storage.googleapis.com/#{version}/chromedriver_mac64.zip"
  appcast "https://chromedriver.storage.googleapis.com/LATEST_RELEASE"
  name "ChromeDriver"
  homepage "https://sites.google.com/a/chromium.org/chromedriver/home"

  conflicts_with cask: "homebrew/cask-versions/chromedriver-beta"

  binary "chromedriver"
end
