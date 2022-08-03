cask "chromedriver" do
  arch = Hardware::CPU.intel? ? "mac64" : "mac64_m1"

  version "104.0.5112.79"

  if Hardware::CPU.intel?
    sha256 "65766e1c5cecf0e560cfb602bdc62e181d89a35258cf2dfbbb2a8cad37d2f451"
  else
    sha256 "420d159af6b441f21a2c92c159cf817cdfc6a8069eb7fdc2822bfe625ac33287"
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
