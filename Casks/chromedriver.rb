cask "chromedriver" do
  arch = Hardware::CPU.intel? ? "mac64" : "mac64_m1"

  version "100.0.4896.60"

  if Hardware::CPU.intel?
    sha256 "492bce3b556419b3fea9adbc2699b363445cdd5a74ba902cc579cd5b1c9c1160"
  else
    sha256 "1e0deca673043bca97b88f70b1c2b6cd29c180ec26df82b6c63107831fd0c3ed"
  end

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
