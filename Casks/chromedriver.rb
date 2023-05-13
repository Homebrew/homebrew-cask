cask "chromedriver" do
  arch arm: "mac_arm64", intel: "mac64"

  version "113.0.5672.63"
  sha256 arm:   "eee99ae3ffa5d56844ee97a98b6d38a8a96bc5d55285310176c3906550f68fb0",
         intel: "26c6be21536fe91e8972b5ddf1e8fccee6f07792f74270c599d0457a663d6dc1"

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

  # No zap stanza required
end
