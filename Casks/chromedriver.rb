cask "chromedriver" do
  arch = Hardware::CPU.intel? ? "mac64" : "mac64_m1"

  version "97.0.4692.71"

  if Hardware::CPU.intel?
    sha256 "7ae949b20216aa9dda278564d877d2c815ded013442cf0b64f429d1676b361ff"
  else
    sha256 "4af03d3ea3b96dfa4281916b3aa0682dd92f2a938e7bf0f00a7e70997339f64b"
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
