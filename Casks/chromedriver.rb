cask "chromedriver" do
  arch arm: "mac_arm64", intel: "mac64"

  version "108.0.5359.71"
  sha256 arm:   "6c71bcea979a471a71e3647199963aa79c34cf3d0b4bb1b3457c7c6b995620bf",
         intel: "b5f92f52bd993621a6e5983ffccda81176bcd1089ee9835e0841645ca53f6e30"

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
