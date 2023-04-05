cask "chromedriver" do
  arch arm: "mac_arm64", intel: "mac64"

  version "112.0.5615.49"
  sha256 arm:   "78f9e001d7850a81dfe8978cd084c28627fa5a06ea9db4788b2b48a5b1dd1fbc",
         intel: "f9746ab188d454ec59dc772d0ccbc138c70e270d73e3ad35b1efbdf24a99c761"

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
