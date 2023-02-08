cask "chromedriver" do
  arch arm: "mac_arm64", intel: "mac64"

  version "110.0.5481.77"
  sha256 arm:   "763652d27e26b02cc86bc5065c768ed334ba42ee95807eabded0b848e1f70a3f",
         intel: "00e81ebb556790034257b35353c1df163728abcf5c7ccffc5b6ff9e2f74e9be9"

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
