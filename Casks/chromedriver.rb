cask "chromedriver" do
  version "85.0.4183.83"
  sha256 "0d21583fe445e40852d10beeb8ef509e19059365ddc7fd27824658c5e5099b62"

  # chromedriver.storage.googleapis.com/ was verified as official when first introduced to the cask
  url "https://chromedriver.storage.googleapis.com/#{version}/chromedriver_mac64.zip"
  appcast "https://chromedriver.storage.googleapis.com/LATEST_RELEASE"
  name "ChromeDriver"
  homepage "https://sites.google.com/a/chromium.org/chromedriver/home"

  conflicts_with cask: "homebrew/cask-versions/chromedriver-beta"

  binary "chromedriver"
end
